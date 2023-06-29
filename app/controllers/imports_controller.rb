class ImportsController < ApplicationController

    def index
        @imports = Import.all
    end


    def create
        import = Import.new(import_params)
        import.file.attach(params[:import][:file])
    end




    def import_params
        params.require(:import).permit(:name, :size, :status, :path, :type, :imported_at, :end_imported_at, :file)
    end
      
end
