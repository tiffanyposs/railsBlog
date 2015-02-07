class EntriesController < ApplicationController
	def index
		@entries = Entry.all
  	end

  	def show
  		@entry = Entry.find_by(id: params[:id])
  	end

    def new
      @entry = Entry.new
    end

    def create
      @entry = Entry.create(entry_params)
      redirect_to @entry
    end

    private
      def entry_params
      params.require(:entry).permit(:title, :content)
    end

  	# private
  	#   def entry_params
	  # params.require(:entry).permit(:title, :content)
  	# end
end