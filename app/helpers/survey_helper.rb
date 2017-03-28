module SurveyHelper
  def link_to_add_fields(name, builder, association, **options)
    new_object = builder.object.send(association).build
    fields = builder.fields_for(association, new_object, :child_index => new_object.id) do |sub_builder|
      render "#{association.to_s.singularize}_fields", f: sub_builder
    end

    options.merge!(data: { id: new_object.id, fields: fields.gsub("\n", "")  })
    link_to name, "#", **options

  end

  def link_to_remove_fields(name, builder, **options)
    f_hidden =  builder.hidden_field(:_destroy)

    options.merge!(data: {id: Time.now.to_i ,fields: f_hidden.gsub("\n", "")  })

    link_to name, "#", **options
  end
end
