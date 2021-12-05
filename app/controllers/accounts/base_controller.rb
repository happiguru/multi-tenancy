module Accounts
    class BaseController < AccountsController
        def current_account
            @current_account ||= Account.find_by(subdomain: request.subdomain)
        end
    
        helper_method :current_account
    end
end