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
  class SaleItem
    # PLU Number | Int32 | Required (ProcessItems, FinaliseSale).
    attr_accessor :id

    # Item Type | Int32(1 = Product, 2 = Discount, 4 = MixNMatch, 8 = Voucher) | Required (ProcessItems, FinaliseSale).
    attr_accessor :type

    # Description | String.  Only required when overriding standard product description.
    attr_accessor :description

    # Item Quantity | Decimal | Required (ProcessItems, FinaliseSale).
    attr_accessor :quantity

    # Item Price | Decimal | Required (ProcessItems, FinaliseSale).
    attr_accessor :price

    # Line Total | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :line_total

    # Mix n Math Rule Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :rule_id

    # Voucher Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :voucher_id

    # Discount Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :discount_id

    # Total Discount Amount | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :discount_total

    # Points Accrued | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :accrual_points

    # Tax Total 1 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :tax1

    # Tax Total 2 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :tax2

    # Tax Total 3 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :tax3

    # Tax Total 4 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :tax4

    # Tax Free Amount | Decimal | Pass supplied value from ProcessItems response to FinaliseSale.
    attr_accessor :tax_free

    # Category Id | Int32 | Required (ProcessItems, FinaliseSale).
    attr_accessor :category_id

    # Inventory Code | String(13) | Required (ProcessItems, FinaliseSale).
    attr_accessor :inventory_code


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'type' => :'Type',
        :'description' => :'Description',
        :'quantity' => :'Quantity',
        :'price' => :'Price',
        :'line_total' => :'LineTotal',
        :'rule_id' => :'RuleId',
        :'voucher_id' => :'VoucherId',
        :'discount_id' => :'DiscountId',
        :'discount_total' => :'DiscountTotal',
        :'accrual_points' => :'AccrualPoints',
        :'tax1' => :'Tax1',
        :'tax2' => :'Tax2',
        :'tax3' => :'Tax3',
        :'tax4' => :'Tax4',
        :'tax_free' => :'TaxFree',
        :'category_id' => :'CategoryId',
        :'inventory_code' => :'InventoryCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'Integer',
        :'description' => :'String',
        :'quantity' => :'Float',
        :'price' => :'Float',
        :'line_total' => :'Float',
        :'rule_id' => :'Integer',
        :'voucher_id' => :'Integer',
        :'discount_id' => :'Integer',
        :'discount_total' => :'Float',
        :'accrual_points' => :'Float',
        :'tax1' => :'Float',
        :'tax2' => :'Float',
        :'tax3' => :'Float',
        :'tax4' => :'Float',
        :'tax_free' => :'Float',
        :'category_id' => :'Integer',
        :'inventory_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'Quantity')
        self.quantity = attributes[:'Quantity']
      end

      if attributes.has_key?(:'Price')
        self.price = attributes[:'Price']
      end

      if attributes.has_key?(:'LineTotal')
        self.line_total = attributes[:'LineTotal']
      end

      if attributes.has_key?(:'RuleId')
        self.rule_id = attributes[:'RuleId']
      end

      if attributes.has_key?(:'VoucherId')
        self.voucher_id = attributes[:'VoucherId']
      end

      if attributes.has_key?(:'DiscountId')
        self.discount_id = attributes[:'DiscountId']
      end

      if attributes.has_key?(:'DiscountTotal')
        self.discount_total = attributes[:'DiscountTotal']
      end

      if attributes.has_key?(:'AccrualPoints')
        self.accrual_points = attributes[:'AccrualPoints']
      end

      if attributes.has_key?(:'Tax1')
        self.tax1 = attributes[:'Tax1']
      end

      if attributes.has_key?(:'Tax2')
        self.tax2 = attributes[:'Tax2']
      end

      if attributes.has_key?(:'Tax3')
        self.tax3 = attributes[:'Tax3']
      end

      if attributes.has_key?(:'Tax4')
        self.tax4 = attributes[:'Tax4']
      end

      if attributes.has_key?(:'TaxFree')
        self.tax_free = attributes[:'TaxFree']
      end

      if attributes.has_key?(:'CategoryId')
        self.category_id = attributes[:'CategoryId']
      end

      if attributes.has_key?(:'InventoryCode')
        self.inventory_code = attributes[:'InventoryCode']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @price.nil?
        invalid_properties.push("invalid value for 'price', price cannot be nil.")
      end

      if @line_total.nil?
        invalid_properties.push("invalid value for 'line_total', line_total cannot be nil.")
      end

      if @rule_id.nil?
        invalid_properties.push("invalid value for 'rule_id', rule_id cannot be nil.")
      end

      if @voucher_id.nil?
        invalid_properties.push("invalid value for 'voucher_id', voucher_id cannot be nil.")
      end

      if @discount_id.nil?
        invalid_properties.push("invalid value for 'discount_id', discount_id cannot be nil.")
      end

      if @discount_total.nil?
        invalid_properties.push("invalid value for 'discount_total', discount_total cannot be nil.")
      end

      if @accrual_points.nil?
        invalid_properties.push("invalid value for 'accrual_points', accrual_points cannot be nil.")
      end

      if @tax1.nil?
        invalid_properties.push("invalid value for 'tax1', tax1 cannot be nil.")
      end

      if @tax2.nil?
        invalid_properties.push("invalid value for 'tax2', tax2 cannot be nil.")
      end

      if @tax3.nil?
        invalid_properties.push("invalid value for 'tax3', tax3 cannot be nil.")
      end

      if @tax4.nil?
        invalid_properties.push("invalid value for 'tax4', tax4 cannot be nil.")
      end

      if @tax_free.nil?
        invalid_properties.push("invalid value for 'tax_free', tax_free cannot be nil.")
      end

      if @category_id.nil?
        invalid_properties.push("invalid value for 'category_id', category_id cannot be nil.")
      end

      if @inventory_code.nil?
        invalid_properties.push("invalid value for 'inventory_code', inventory_code cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @type.nil?
      return false if @description.nil?
      return false if @quantity.nil?
      return false if @price.nil?
      return false if @line_total.nil?
      return false if @rule_id.nil?
      return false if @voucher_id.nil?
      return false if @discount_id.nil?
      return false if @discount_total.nil?
      return false if @accrual_points.nil?
      return false if @tax1.nil?
      return false if @tax2.nil?
      return false if @tax3.nil?
      return false if @tax4.nil?
      return false if @tax_free.nil?
      return false if @category_id.nil?
      return false if @inventory_code.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          description == o.description &&
          quantity == o.quantity &&
          price == o.price &&
          line_total == o.line_total &&
          rule_id == o.rule_id &&
          voucher_id == o.voucher_id &&
          discount_id == o.discount_id &&
          discount_total == o.discount_total &&
          accrual_points == o.accrual_points &&
          tax1 == o.tax1 &&
          tax2 == o.tax2 &&
          tax3 == o.tax3 &&
          tax4 == o.tax4 &&
          tax_free == o.tax_free &&
          category_id == o.category_id &&
          inventory_code == o.inventory_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, description, quantity, price, line_total, rule_id, voucher_id, discount_id, discount_total, accrual_points, tax1, tax2, tax3, tax4, tax_free, category_id, inventory_code].hash
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