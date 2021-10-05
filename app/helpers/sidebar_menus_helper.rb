module SidebarMenusHelper

    def sidebar_menu 
        if current_account.accountable.role.name == "superuser"
            render "layouts/partials/dashboard/navs/superuser-nav"
        elsif current_account.accountable.role.name == "Prestataire"
            render "layouts/partials/dashboard/navs/prestataire-nav"
        elsif current_account.accountable.role.name == "Patient"
            render "layouts/partials/dashboard/navs/patient-nav"
       

        else
            render "layouts/partials/dashboard/navs/superuser-nav"


        end

    end

end