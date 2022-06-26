class DistributorsController < ApplicationController
    def create_supplier
        company = Company.find(params[:company_id])
        if company
            supplier = Distributor.create(supplier_params)
            if company.valid?
                render json:{success: true, message: "El proveedor fue creado exitosamente.", supplier: supplier}
            else
                render json: {success: false, message: "El proveedor no pudo ser creado, chequea los datos nuevamente."}
            end
        end
    end

    def get_supplier 
        admin = get_admin
        if admin
            companies = admin.companies

            render json:{companies: companies}
        else
            nil
        end
    end

    private 

    def supplier_params
        params.require(:distributor).permit(:name, :address, :website, :pdf, :phone, :company_id)
    end

end
