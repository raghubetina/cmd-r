class MarkMailer < ActionMailer::Base
  default from: "cmdrapp@gmail.com"

  def mark_change(mark)
    @mark = mark
    mail(:to => @mark.user.email, :subject => "#{@mark.url} has changed!")
  end
end
