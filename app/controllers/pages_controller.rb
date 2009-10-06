class PagesController < ApplicationController
  def show
    @book = Book.find_by_title(params[:book_title])
    @page = Page.find_by_book_id_and_name(@book.id, params[:page_name])
    @line = @page.lines.new
    @line.book_id = @book.id
    @line.tree_number = @page.lines.last.tree_number + "." if @page.lines.last

    respond_to do |format|
      format.html
    end
  end

  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      unless @page.update_attributes(params[:page])
        flash[:notice] = @page.errors.full_messages.join("\n")
      end
      format.html { redirect_to(page_url(:book_title => @page.book.title, :page_name => @page.name)) }
    end
  end
end
