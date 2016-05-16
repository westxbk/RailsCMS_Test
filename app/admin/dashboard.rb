ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

      section "Recent Pages", :priority => 1 do
        table_for Page.order("id desc").limit(20) do
          column :id
          column "Page Title", :title do |page|
            link_to page.title, [:admin, page]
          end
          column :category, :sortable => :category
          column :created_at
      end
    end

    section "Recent Categories", :priority => 1 do
      table_for Category.order("id desc").limit(20) do
        column :id
        column "Category Name", :title do |category|
          link_to category.name, [:admin, category]
        end
        column :created_at
    end
  end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
