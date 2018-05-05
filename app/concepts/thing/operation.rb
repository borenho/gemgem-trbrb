class Thing < ActiveRecord::Base
  class Create < Trailblazer::Operation
    include Model    # Tjis will resolve to & load the Trailblazer::Operation::Model module
    model Thing, :create

    contract do
      property :name
      property :description

      validates :name, presence: true
      validates :description, length: { in: 4..160 }, allow_blank: true
    end

    def process(params)
      thing = Thing.new

      validates(params[:thing]) do |f|
        f.save
      end
    end


    class Update < Create
      action :update
  
      property :name, writeable: false
    end
  end
end
