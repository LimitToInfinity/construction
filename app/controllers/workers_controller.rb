class WorkersController < ApplicationController

    before_action :find_worker, only: [:show, :edit, :update, :destroy]

    def new
        @worker = Worker.new
        1.times { @worker.sites.build }
    end

    def create
        @worker = Worker.create(worker_params)
    end

    private

    def worker_params
        params.require(:worker).permit(:name, site_ids: [], sites_attributes: [:location, :hazardous])
    end

    def find_worker
        @worker = Worker.find(params[:id])
    end

end
