
def delete_object(model, params)
  object = model.find(params[:id])
  object.destroy

  {
    status: :deleted,
    company: object
  }
end
