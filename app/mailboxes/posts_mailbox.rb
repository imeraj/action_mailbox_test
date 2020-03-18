class PostsMailbox < ApplicationMailbox
  before_processing :process_owner

  def process
    Post.create(title: mail.subject, body: mail.body, owner: @owner)
  end

  private
  def process_owner
    @owner = mail.from.first.split('@').first
  end
end
