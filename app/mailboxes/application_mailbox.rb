class ApplicationMailbox < ActionMailbox::Base
  POSTS_REGEX = /meraj@funwriting.io/i

  # routing /something/i => :somewhere
  routing POSTS_REGEX => :posts
end
