class MailerSystem < ActionMailer::Base
  default from: 'thinkgrand_poster@163.com'

  def user_contact_notify(contact_id)
    email = "44289889@qq.com"
    @contact = Contact.find(contact_id)
    mail(to: email, subject: '有用户在网站提交了沟通信息')
  end

end