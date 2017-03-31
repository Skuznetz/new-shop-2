class ApplicationMailer < ActionMailer::Base
  default from: 'info@newshop2.localhost',
  template path: 'items_mailer/items'
  layout 'mailer'
end
