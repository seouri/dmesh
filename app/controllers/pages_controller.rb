class PagesController < ApplicationController
  def show
    @book = Book.find_by_title(params[:book_title])
    @page = Page.find_by_book_id_and_name(@book.id, params[:page_name])
    @line = @page.lines.new

    respond_to do |format|
      format.html
    end
  end

  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        flash[:notice] = 'Page was successfully updated.'
      end
      format.html { redirect_to(page_url(:book_title => @page.book.title, :page_name => @page.name)) }
    end
  end
end
