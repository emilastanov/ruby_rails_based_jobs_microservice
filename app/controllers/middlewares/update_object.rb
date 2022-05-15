
def update_object(model, params)
  object = model.find params.delete(:id)
  object.update params

  {
    status: :ok,
    data: object
  }
end
