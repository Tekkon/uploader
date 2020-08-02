class UploadController < ApplicationController
  skip_before_action :verify_authenticity_token

  def download
    send_file "#{Rails.root}/public/uploads/#{params[:filename]}.#{params[:ext]}"
  end

  def upload
    uploaded_io = params[:file]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end
end
