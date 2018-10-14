class UserMailer < ApplicationMailer
    default from: "altheaserena.yi@gmail.com"

    def new_book_email(book, user)
        @book = book
        @user = user

        mail(to: @user.email, subject: "#{@book.title} was added to your list!")
    end
end
