classdef Account < handle
    properties
        balance = 0;
    end
    
    events
        InsufficientFunds
    end
    
    methods
        function Deposit(obj, amount)
            obj.balance=obj.balance+amount;
        end
        
        function Withdraw(obj, amount)
            if(amount<=obj.balance)
                obj.balance=obj.balance-amount;
            else
                notify(obj, 'InsufficientFunds')
                disp('insufficient funds')
            end
        end
    end
end