class ThingsController< ApplicationController
  def new
    form Thing::Create
  end

  def create
    run Thing::Create
  end

  def edit
    form Thing::Update

    render action: :new
  end
end