class HomeController < ApplicationController
  def index
    @works = Work.all.order('id DESC')
  end

  def download_cv
    send_file "#{Rails.root}/app/assets/cv.pdf", type: "application/pdf", x_sendfile: true
  end
end
