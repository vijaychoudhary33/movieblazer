class ImportsController < ApplicationController
   

    def index
        @imports = Import.all
    end
    
    def new
        @import = Import.new
    end

    def create
        @import = Import.new(import_params)
        @import.name = params[:file].original_filename.split(".").first
        @import.size = (params[:file].size) 
        @import.file_type = params[:file].content_type
        @import.path = params[:file].path
    

        if @import.save
            redirtect_to @import , notice: 'File uploaded successfully.'
        else
           
        end 
    end
       
    




    def import_params
        params.permit(:file)
    end
      
end
