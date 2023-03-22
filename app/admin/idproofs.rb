ActiveAdmin.register Idproof do
    permit_params :document, :verify 
  
    index do
      selectable_column
      id_column
      column :document
      column :verify
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :document
    filter :verify
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :document
        f.input :verify
      end
      f.actions
    end
  
  end
  