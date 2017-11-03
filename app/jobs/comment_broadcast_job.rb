#ensure the class is defined properly

class CommentBroadcastJob < ApplicartionJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end

#ac missed this private wonder why you need it
private

  def render_comment(comment)
    CommentsController.render partial:'comments/comment', locals: {comment: comment }
  end

end