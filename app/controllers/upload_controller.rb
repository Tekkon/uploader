class UploadController < ApplicationController
  skip_before_action :verify_authenticity_token

  def download
    send_file "#{Rails.root}/public/uploads/#{params[:filename]}.#{params[:ext]}"
  end

  def upload
    File.open(Rails.root.join('public', 'uploads', params[:filename]), 'wb') do |file|
      file.write(params[:body])
    end
  end
end
