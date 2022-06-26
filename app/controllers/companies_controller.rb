class CompaniesController < ApplicationController
    def create_company
        admin = Admin.find(params[:admin_id])
        if admin
            company = Company.create(company_params)
            if company.valid?
                render json:{success: true, message: "La empresa fue creada exitosamente.", company: company}
            else
                render json: {success: false, message: "La empresa no pudo ser creada, chequea los datos nuevamente."}
            end
        end
    end

    def get_company 
        admin = get_admin
        if admin
            companies = admin.companies

            render json:{companies: companies}
        else
            nil
        end
    end

    private 

    def company_params
        params.require(:company).permit(:name, :rif, :country, :admin_id)
    end
end
