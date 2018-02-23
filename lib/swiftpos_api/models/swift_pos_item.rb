=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module SwiftApi
  # Defines a sale item.
  class SwiftPOSItem
    # Inventory Code | String.
    attr_accessor :inventory_code

    # PLU Number | Int32.
    attr_accessor :plu

    # Product Description | String.
    attr_accessor :name

    # Product Host Id | String.
    attr_accessor :host_id

    # Size | Complex Object.
    attr_accessor :size

    # Category | Complex Object.
    attr_accessor :category

    # Group | Complex Object.
    attr_accessor :group

    # Master Group | Complex Object.
    attr_accessor :master_group

    # Price Level | Complex Object.
    attr_accessor :price_level

    # Clerk | Complex Object.
    attr_accessor :clerk

    # Location | Complex Object.
    attr_accessor :location

    # Quantity | Decimal.
    attr_accessor :quantity

    # Item Total Ex Tax | Decimal.
    attr_accessor :total_ex

    # Item Total Inc Tax | Decimal.
    attr_accessor :total_inc

    # Line Counter | Int32.
    attr_accessor :counter

    # Barcode | String.
    attr_accessor :barcode

    # Normal Price | Decimal.
    attr_accessor :normal_price

    # Unit Cost | Decimal.
    attr_accessor :item_cost

    # Item Tax Total | Decimal.
    attr_accessor :tax

    # Tax Free Component | Decimal.
    attr_accessor :tax_free

    # Discount Item | Boolean.
    attr_accessor :is_discount

    # Refund Item | Boolean.
    attr_accessor :is_refund

    # Void Item | Boolean.
    attr_accessor :is_void

    # Surcharge Item | Boolean.
    attr_accessor :is_surcharge

    # Item sold on promotion | Boolean.
    attr_accessor :is_promotion

    # Reason for item price change, refund etc | Complex Object.
    attr_accessor :reason


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'inventory_code' => :'InventoryCode',
        :'plu' => :'Plu',
        :'name' => :'Name',
        :'host_id' => :'HostId',
        :'size' => :'Size',
        :'category' => :'Category',
        :'group' => :'Group',
        :'master_group' => :'MasterGroup',
        :'price_level' => :'PriceLevel',
        :'clerk' => :'Clerk',
        :'location' => :'Location',
        :'quantity' => :'Quantity',
        :'total_ex' => :'TotalEx',
        :'total_inc' => :'TotalInc',
        :'counter' => :'Counter',
        :'barcode' => :'Barcode',
        :'normal_price' => :'NormalPrice',
        :'item_cost' => :'ItemCost',
        :'tax' => :'Tax',
        :'tax_free' => :'TaxFree',
        :'is_discount' => :'IsDiscount',
        :'is_refund' => :'IsRefund',
        :'is_void' => :'IsVoid',
        :'is_surcharge' => :'IsSurcharge',
        :'is_promotion' => :'IsPromotion',
        :'reason' => :'Reason'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'inventory_code' => :'String',
        :'plu' => :'Integer',
        :'name' => :'String',
        :'host_id' => :'String',
        :'size' => :'SwiftPOSSize',
        :'category' => :'SwiftPOSCategory',
        :'group' => :'SwiftPOSGroup',
        :'master_group' => :'SwiftPOSMasterGroup',
        :'price_level' => :'SwiftPOSPriceLevel',
        :'clerk' => :'SwiftPOSClerk',
        :'location' => :'SwiftPOSLocation',
        :'quantity' => :'Float',
        :'total_ex' => :'Float',
        :'total_inc' => :'Float',
        :'counter' => :'Integer',
        :'barcode' => :'String',
        :'normal_price' => :'Float',
        :'item_cost' => :'Float',
        :'tax' => :'Float',
        :'tax_free' => :'Float',
        :'is_discount' => :'BOOLEAN',
        :'is_refund' => :'BOOLEAN',
        :'is_void' => :'BOOLEAN',
        :'is_surcharge' => :'BOOLEAN',
        :'is_promotion' => :'BOOLEAN',
        :'reason' => :'SwiftPOSReason'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'InventoryCode')
        self.inventory_code = attributes[:'InventoryCode']
      end

      if attributes.has_key?(:'Plu')
        self.plu = attributes[:'Plu']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'HostId')
        self.host_id = attributes[:'HostId']
      end

      if attributes.has_key?(:'Size')
        self.size = attributes[:'Size']
      end

      if attributes.has_key?(:'Category')
        self.category = attributes[:'Category']
      end

      if attributes.has_key?(:'Group')
        self.group = attributes[:'Group']
      end

      if attributes.has_key?(:'MasterGroup')
        self.master_group = attributes[:'MasterGroup']
      end

      if attributes.has_key?(:'PriceLevel')
        self.price_level = attributes[:'PriceLevel']
      end

      if attributes.has_key?(:'Clerk')
        self.clerk = attributes[:'Clerk']
      end

      if attributes.has_key?(:'Location')
        self.location = attributes[:'Location']
      end

      if attributes.has_key?(:'Quantity')
        self.quantity = attributes[:'Quantity']
      end

      if attributes.has_key?(:'TotalEx')
        self.total_ex = attributes[:'TotalEx']
      end

      if attributes.has_key?(:'TotalInc')
        self.total_inc = attributes[:'TotalInc']
      end

      if attributes.has_key?(:'Counter')
        self.counter = attributes[:'Counter']
      end

      if attributes.has_key?(:'Barcode')
        self.barcode = attributes[:'Barcode']
      end

      if attributes.has_key?(:'NormalPrice')
        self.normal_price = attributes[:'NormalPrice']
      end

      if attributes.has_key?(:'ItemCost')
        self.item_cost = attributes[:'ItemCost']
      end

      if attributes.has_key?(:'Tax')
        self.tax = attributes[:'Tax']
      end

      if attributes.has_key?(:'TaxFree')
        self.tax_free = attributes[:'TaxFree']
      end

      if attributes.has_key?(:'IsDiscount')
        self.is_discount = attributes[:'IsDiscount']
      end

      if attributes.has_key?(:'IsRefund')
        self.is_refund = attributes[:'IsRefund']
      end

      if attributes.has_key?(:'IsVoid')
        self.is_void = attributes[:'IsVoid']
      end

      if attributes.has_key?(:'IsSurcharge')
        self.is_surcharge = attributes[:'IsSurcharge']
      end

      if attributes.has_key?(:'IsPromotion')
        self.is_promotion = attributes[:'IsPromotion']
      end

      if attributes.has_key?(:'Reason')
        self.reason = attributes[:'Reason']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @inventory_code.nil?
        invalid_properties.push("invalid value for 'inventory_code', inventory_code cannot be nil.")
      end

      if @plu.nil?
        invalid_properties.push("invalid value for 'plu', plu cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @host_id.nil?
        invalid_properties.push("invalid value for 'host_id', host_id cannot be nil.")
      end

      if @size.nil?
        invalid_properties.push("invalid value for 'size', size cannot be nil.")
      end

      if @category.nil?
        invalid_properties.push("invalid value for 'category', category cannot be nil.")
      end

      if @group.nil?
        invalid_properties.push("invalid value for 'group', group cannot be nil.")
      end

      if @master_group.nil?
        invalid_properties.push("invalid value for 'master_group', master_group cannot be nil.")
      end

      if @price_level.nil?
        invalid_properties.push("invalid value for 'price_level', price_level cannot be nil.")
      end

      if @clerk.nil?
        invalid_properties.push("invalid value for 'clerk', clerk cannot be nil.")
      end

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @total_ex.nil?
        invalid_properties.push("invalid value for 'total_ex', total_ex cannot be nil.")
      end

      if @total_inc.nil?
        invalid_properties.push("invalid value for 'total_inc', total_inc cannot be nil.")
      end

      if @counter.nil?
        invalid_properties.push("invalid value for 'counter', counter cannot be nil.")
      end

      if @barcode.nil?
        invalid_properties.push("invalid value for 'barcode', barcode cannot be nil.")
      end

      if @normal_price.nil?
        invalid_properties.push("invalid value for 'normal_price', normal_price cannot be nil.")
      end

      if @item_cost.nil?
        invalid_properties.push("invalid value for 'item_cost', item_cost cannot be nil.")
      end

      if @tax.nil?
        invalid_properties.push("invalid value for 'tax', tax cannot be nil.")
      end

      if @tax_free.nil?
        invalid_properties.push("invalid value for 'tax_free', tax_free cannot be nil.")
      end

      if @is_discount.nil?
        invalid_properties.push("invalid value for 'is_discount', is_discount cannot be nil.")
      end

      if @is_refund.nil?
        invalid_properties.push("invalid value for 'is_refund', is_refund cannot be nil.")
      end

      if @is_void.nil?
        invalid_properties.push("invalid value for 'is_void', is_void cannot be nil.")
      end

      if @is_surcharge.nil?
        invalid_properties.push("invalid value for 'is_surcharge', is_surcharge cannot be nil.")
      end

      if @is_promotion.nil?
        invalid_properties.push("invalid value for 'is_promotion', is_promotion cannot be nil.")
      end

      if @reason.nil?
        invalid_properties.push("invalid value for 'reason', reason cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @inventory_code.nil?
      return false if @plu.nil?
      return false if @name.nil?
      return false if @host_id.nil?
      return false if @size.nil?
      return false if @category.nil?
      return false if @group.nil?
      return false if @master_group.nil?
      return false if @price_level.nil?
      return false if @clerk.nil?
      return false if @location.nil?
      return false if @quantity.nil?
      return false if @total_ex.nil?
      return false if @total_inc.nil?
      return false if @counter.nil?
      return false if @barcode.nil?
      return false if @normal_price.nil?
      return false if @item_cost.nil?
      return false if @tax.nil?
      return false if @tax_free.nil?
      return false if @is_discount.nil?
      return false if @is_refund.nil?
      return false if @is_void.nil?
      return false if @is_surcharge.nil?
      return false if @is_promotion.nil?
      return false if @reason.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inventory_code == o.inventory_code &&
          plu == o.plu &&
          name == o.name &&
          host_id == o.host_id &&
          size == o.size &&
          category == o.category &&
          group == o.group &&
          master_group == o.master_group &&
          price_level == o.price_level &&
          clerk == o.clerk &&
          location == o.location &&
          quantity == o.quantity &&
          total_ex == o.total_ex &&
          total_inc == o.total_inc &&
          counter == o.counter &&
          barcode == o.barcode &&
          normal_price == o.normal_price &&
          item_cost == o.item_cost &&
          tax == o.tax &&
          tax_free == o.tax_free &&
          is_discount == o.is_discount &&
          is_refund == o.is_refund &&
          is_void == o.is_void &&
          is_surcharge == o.is_surcharge &&
          is_promotion == o.is_promotion &&
          reason == o.reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [inventory_code, plu, name, host_id, size, category, group, master_group, price_level, clerk, location, quantity, total_ex, total_inc, counter, barcode, normal_price, item_cost, tax, tax_free, is_discount, is_refund, is_void, is_surcharge, is_promotion, reason].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwiftApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
