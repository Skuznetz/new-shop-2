class ItemsMailer < ApplicationMailer
  def item destroyed(item)
  	@item = item
  	mail to: 's.kuznetzov@mail.ru',
  	     subject: "Item destroyed"
  end
end
