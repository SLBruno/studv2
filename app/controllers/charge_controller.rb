class ChargeController < ApplicationController
    
    before_action :authenticate_user!
    protect_from_forgery except: [:payment, :hook, :pago]

    
    def show
        subscription = Subscription.find(params[:id])
    end
    
    
    def free
        curso = Curso.find(params[:curso_id])
        #sign_up for the course
        current_user.subscriptions.create(curso: curso) 
        redirect_to curso
    end
    
    def payment
        curso = Curso.find(params[:curso_id])
    # send request to PayPal 
        
    values = {
        business: 'brunolagoela-facilitator@gmail.com',
        cmd: '_xclick',
        upload: 1, 
        notify_url: 'http://636fe93d.ngrok.com/hook',
        amount: curso.price,
        currency_code: 'BRL',
        item_name: curso.name,
        item_number: curso.id, 
        quantity: '1',
        return:  'http://636fe93d.ngrok.com/hook',
        }
        
    redirect_to "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
        
    def pago
        curso = Curso.find(params[:curso_id])
        #sign_up for the course
        current_user.subscriptions.create(curso: curso) 
    end 
        
    def hook   
        params.permit! # Permit all Paypal input params
        status = params[:payment_status]
        cursoidpaypal = params[:item_number]
        if status == "Completed"
            @subscription = current_user.subscriptions.create(curso_id: cursoidpaypal)
            @subscription.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now

            redirect_to subscription_path
    end
  end
 end
end

