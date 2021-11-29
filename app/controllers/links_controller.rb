class LinksController < ApplicationController
    def index
        @links = Link.all
    end

    def search
        @target = params[:target_id]
        @target_links = TargetLink.where(target_id: params[:target_id])
        @link_ids = @target_links.map{
            |i| i.link_id
        }
        @links = @link_ids.map do |f|
            Link.find(f)
        end
    end

    def new
        @link = Link.new
        @tags = Tag.all
    end

    def create
        @link = Link.new(link_params)
        if @link.save
            if params[:link][:target_link]
                params[:link][:target_link][:target_id].each do |f|          
                target_link = TargetLink.create(target_id: f,link_id: @link.id)
                target_link.save
                end
                unless params[:link][:target_link][:target_id].include?(1)
                    target_link = TargetLink.create(target_id: 1,link_id: @link.id)
                    target_link.save
                end
                redirect_to root_path
            else 
                flash[:error] = "対象者を選択してください。"
                render action: :new
            end
            
        else
            render action: :new
        end
    end

    def destroy
        link = Link.find(params[:id])
        link.destroy
        redirect_to root_path
    end

    def edit
        @link = Link.find(params[:id])
    end

    def update
        link = Link.find(params[:id])
        link.update(link_params)
        redirect_to root_path
    end

    private

    def link_params
        params.require(:link).permit(:name,:text,:url,:tag_id)
    end
end
