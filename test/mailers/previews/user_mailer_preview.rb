# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def new_book_email
        UserMailer.with(user: User.first).new_book_email(Book.last, User.first)
    end
end
