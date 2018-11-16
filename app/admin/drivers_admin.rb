Trestle.resource(:drivers) do
  menu do
    item :drivers, icon: "fa fa-user", group: :Usuarios
  end

  # Customize the table columns shown on the index view.
  table do
    column :id
    column :first_name
    column :last_name
    column :email
    column :location
    column :rating
    actions
  end

  # Customize the form fields shown on the new/edit views.
  form do |driver|
    text_field :first_name
    text_field :last_name
    text_field :email
    text_field :password
    text_field :location

    label :drivers_car
    fields_for :car, driver.car || driver.build_car do
      text_field :model
      text_field :license_plate
      text_field :brand
      text_field :color
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:driver).permit(:first_name, :last_name, :email, :password, :location, 
                                    car_attributes: [:model, :license_plate, :brand, :color])
  end
end
