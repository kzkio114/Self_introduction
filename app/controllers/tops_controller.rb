class TopsController < ApplicationController
  def index
    @current_text = session[:current_text] || ""
    @full_text = "これは一文字ずつ表示されるテキストです。"
  end

  def show_button
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace('show', partial: 'tops/show_button') }
    end
  end

  def create
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
          turbo_stream.append('modal-container', partial: 'tops/modal') +
          turbo_stream.update('message', partial: 'tops/message', locals: { message: "フォームが送信されました！" })
      end
    end
  end

  def close_modal
    respond_to do |format|
      format.turbo_stream { render 'tops/close_modal' }
    end
  end

  def my_show
    session[:current_text] ||= ""
    full_text = "これは一文字ずつ表示されるテキストです。"
  
    if session[:current_text].length < full_text.length
      session[:current_text] += full_text[session[:current_text].length]
    else
      # Reset session[:current_text] when all characters of full_text have been displayed
      session.delete(:current_text)
    end
  
    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: [
          turbo_stream.replace("tops", partial: "tops/my_name", locals: { current_text: session[:current_text] })
        ]
      }
    end
  end
end