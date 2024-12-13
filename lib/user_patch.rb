module LocalAvatarsPlugin
	module UserPatch
        def self.included(base) # :nodoc:
            base.class_eval do    
              has_one :avatar, lambda { where("#{Attachment.table_name}.description = 'avatar'") }, :class_name => 'Attachment', :as => :container, :dependent => :destroy
            end
        end
    end
end
