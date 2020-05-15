class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(
      from: "sytem@example.com",
      to: "t4botks@yahoo.co.jp",
      subject: "お問い合わせ通知"
    )
  end
end
