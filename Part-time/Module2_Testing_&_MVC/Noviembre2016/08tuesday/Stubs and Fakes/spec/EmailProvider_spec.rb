class EmailProvider
  def initialize
    @emails = []
  end
  def add_email(email)
    @emails.push(email)
  end
  def get_subjects
    subjects = @emails.map do |email|
      email.subject
    end
  end
end

class Email
  attr_reader :subject, :body
  def initialize(subject, body)
    @subject = subject
    @body = body
  end
end
