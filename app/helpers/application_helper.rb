module ApplicationHelper
  def has_errors?(model)
    render partial: 'shared/has-errors', locals: {model: model} if ( model.errors )
  end
  def has_records?(collection)
    render partial: 'shared/has-records' if ( collection.empty? )
  end
end
