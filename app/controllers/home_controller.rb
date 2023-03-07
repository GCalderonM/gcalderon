class HomeController < ApplicationController
  def index
    @works = Work.all.order('id DESC')
    @posts = Post.all.with_rich_text_content.order('id DESC')
  end

  def download_cv
    send_file "#{Rails.root}/app/assets/cv.pdf", type: "application/pdf", x_sendfile: true
  end

  def show_post
    @post = Post.friendly.find_by_slug(params[:slug])

    render "show_post", locals: { post: @post }
  end

  def projects
    @projects = Project.all
  end
end
