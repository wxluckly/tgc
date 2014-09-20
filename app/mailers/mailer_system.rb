class MailerSystem < ActionMailer::Base
  default from: 'thinkgrand_poster@163.com'

  def user_contact_notify(contact_id)
    email = "info@thinkgrand.com.cn"
    @contact = Contact.find(contact_id)
    mail(to: email, subject: '【胜观传播】网站通知')
  end

end