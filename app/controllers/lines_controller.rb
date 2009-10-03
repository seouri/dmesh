class LinesController < ApplicationController
  def edit
    @line = Line.find(params[:id])
  end

  def create
    page = Page.find(params[:line][:page_id])
    term = Term.find_or_create_by_string(params[:line][:term][:string])
    params[:line].delete(:term)
    @line = term.lines.build(params[:line])

    respond_to do |format|
      if @line.save
        flash[:notice] = 'Line was successfully created.'
      end
      format.html { redirect_to(page_url(:book_title => page.book.title, :page_name => page.name)) }
    end
  end

  def update
    @line = Line.find(params[:id])

    respond_to do |format|
      if @line.update_attributes(params[:line])
        flash[:notice] = 'Line was successfully updated.'
        format.html { redirect_to(@line) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy

    respond_to do |format|
      format.html { redirect_to(lines_url) }
    end
  end
end
