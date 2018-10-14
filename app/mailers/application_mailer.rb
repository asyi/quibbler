class ApplicationMailer < ActionMailer::Base
  default from: 'altheaserena.yi@gmail.com'
  layout 'mailer'

  def mail(headers)
    super(headers) do |format|
      format.mjml
      format.text
    end
  end
end
