
def create_object(model, params, child_of: {})
  object = model.new(params)

  if child_of
    parent = child_of[:model].find(params[child_of[:field]])
    parent.send(model.table_name) << object
  end

  object.save

  {
    status: :ok,
    data: object
  }
end
