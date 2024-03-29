=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module SwiftApi
  # Defines a member.
  class Member
    # Member Id | Int32 | Update Denied.  Optional when creating a new member.
    attr_accessor :id

    # Alternate Id | String(64) | Update Allowed.
    attr_accessor :alternate_id

    # Member Type | Int32(0 = Member, 3 = Alternate, 5 = EGM) | Update Denied.
    attr_accessor :type

    # First Name | String(30) | Update Allowed.
    attr_accessor :first_name

    # Surname | String(30) | Update Allowed.
    attr_accessor :surname

    # This property was made obsolete on 01/02/18.  Use the DateOfBirth property instead.
    attr_accessor :date_of_brith

    # Date of Birth | DateTime | Update Allowed.
    attr_accessor :date_of_birth

    # Shipping Address | Complex Object | Update Allowed.
    attr_accessor :shipping_address

    # Mailing Address | Complex Object | Update Allowed.
    attr_accessor :mailing_address

    # Home Phone | String(20) | Update Allowed.
    attr_accessor :home_phone

    # Mobile Phone | String(20) | Update Allowed.
    attr_accessor :mobile_phone

    # Email Address | String(50) | Update Allowed.
    attr_accessor :email_address

    # Mailing Address Active Flag | Boolean | Update Allowed.
    attr_accessor :mailing_address_active

    # Accounts | Complex Object | Partial Update Allowed.
    attr_accessor :accounts

    # Classifications | Complex Object | Update Allowed.
    attr_accessor :classifications

    # Member Photo | Byte[] | Update Denied.
    attr_accessor :member_photo

    # Gender | Int32 | Update Allowed.  0 = Male, 1 = Female.
    attr_accessor :gender

    # Receive Promotional Email Flag | Boolean | Update Allowed.
    attr_accessor :receive_email

    # Receieve Promotional SMS Flag | Boolean | Update Allowed.
    attr_accessor :receive_sms

    # Member Password | String | Update Denied.  Can be set when creating a new member.  Value is never returned when getting a member.
    attr_accessor :password


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'alternate_id' => :'AlternateId',
        :'type' => :'Type',
        :'first_name' => :'FirstName',
        :'surname' => :'Surname',
        :'date_of_brith' => :'DateOfBrith',
        :'date_of_birth' => :'DateOfBirth',
        :'shipping_address' => :'ShippingAddress',
        :'mailing_address' => :'MailingAddress',
        :'home_phone' => :'HomePhone',
        :'mobile_phone' => :'MobilePhone',
        :'email_address' => :'EmailAddress',
        :'mailing_address_active' => :'MailingAddressActive',
        :'accounts' => :'Accounts',
        :'classifications' => :'Classifications',
        :'member_photo' => :'MemberPhoto',
        :'gender' => :'Gender',
        :'receive_email' => :'ReceiveEmail',
        :'receive_sms' => :'ReceiveSms',
        :'password' => :'Password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'alternate_id' => :'String',
        :'type' => :'Integer',
        :'first_name' => :'String',
        :'surname' => :'String',
        :'date_of_brith' => :'String',
        :'date_of_birth' => :'DateTime',
        :'shipping_address' => :'Address',
        :'mailing_address' => :'Address',
        :'home_phone' => :'String',
        :'mobile_phone' => :'String',
        :'email_address' => :'String',
        :'mailing_address_active' => :'BOOLEAN',
        :'accounts' => :'Array<Account>',
        :'classifications' => :'Array<Classification>',
        :'member_photo' => :'String',
        :'gender' => :'Integer',
        :'receive_email' => :'BOOLEAN',
        :'receive_sms' => :'BOOLEAN',
        :'password' => :'String'
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

      if attributes.has_key?(:'AlternateId')
        self.alternate_id = attributes[:'AlternateId']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'Surname')
        self.surname = attributes[:'Surname']
      end

      if attributes.has_key?(:'DateOfBrith')
        self.date_of_brith = attributes[:'DateOfBrith']
      end

      if attributes.has_key?(:'DateOfBirth')
        self.date_of_birth = attributes[:'DateOfBirth']
      end

      if attributes.has_key?(:'ShippingAddress')
        self.shipping_address = attributes[:'ShippingAddress']
      end

      if attributes.has_key?(:'MailingAddress')
        self.mailing_address = attributes[:'MailingAddress']
      end

      if attributes.has_key?(:'HomePhone')
        self.home_phone = attributes[:'HomePhone']
      end

      if attributes.has_key?(:'MobilePhone')
        self.mobile_phone = attributes[:'MobilePhone']
      end

      if attributes.has_key?(:'EmailAddress')
        self.email_address = attributes[:'EmailAddress']
      end

      if attributes.has_key?(:'MailingAddressActive')
        self.mailing_address_active = attributes[:'MailingAddressActive']
      end

      if attributes.has_key?(:'Accounts')
        if (value = attributes[:'Accounts']).is_a?(Array)
          self.accounts = value
        end
      end

      if attributes.has_key?(:'Classifications')
        if (value = attributes[:'Classifications']).is_a?(Array)
          self.classifications = value
        end
      end

      if attributes.has_key?(:'MemberPhoto')
        self.member_photo = attributes[:'MemberPhoto']
      end

      if attributes.has_key?(:'Gender')
        self.gender = attributes[:'Gender']
      end

      if attributes.has_key?(:'ReceiveEmail')
        self.receive_email = attributes[:'ReceiveEmail']
      end

      if attributes.has_key?(:'ReceiveSms')
        self.receive_sms = attributes[:'ReceiveSms']
      end

      if attributes.has_key?(:'Password')
        self.password = attributes[:'Password']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @alternate_id.nil?
        invalid_properties.push("invalid value for 'alternate_id', alternate_id cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @surname.nil?
        invalid_properties.push("invalid value for 'surname', surname cannot be nil.")
      end

      if @date_of_brith.nil?
        invalid_properties.push("invalid value for 'date_of_brith', date_of_brith cannot be nil.")
      end

      if @date_of_birth.nil?
        invalid_properties.push("invalid value for 'date_of_birth', date_of_birth cannot be nil.")
      end

      if @shipping_address.nil?
        invalid_properties.push("invalid value for 'shipping_address', shipping_address cannot be nil.")
      end

      if @mailing_address.nil?
        invalid_properties.push("invalid value for 'mailing_address', mailing_address cannot be nil.")
      end

      if @home_phone.nil?
        invalid_properties.push("invalid value for 'home_phone', home_phone cannot be nil.")
      end

      if @mobile_phone.nil?
        invalid_properties.push("invalid value for 'mobile_phone', mobile_phone cannot be nil.")
      end

      if @email_address.nil?
        invalid_properties.push("invalid value for 'email_address', email_address cannot be nil.")
      end

      if @mailing_address_active.nil?
        invalid_properties.push("invalid value for 'mailing_address_active', mailing_address_active cannot be nil.")
      end

      if @accounts.nil?
        invalid_properties.push("invalid value for 'accounts', accounts cannot be nil.")
      end

      if @classifications.nil?
        invalid_properties.push("invalid value for 'classifications', classifications cannot be nil.")
      end

      if @member_photo.nil?
        invalid_properties.push("invalid value for 'member_photo', member_photo cannot be nil.")
      end

      if @member_photo !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push("invalid value for 'member_photo', must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.")
      end

      if @gender.nil?
        invalid_properties.push("invalid value for 'gender', gender cannot be nil.")
      end

      if @receive_email.nil?
        invalid_properties.push("invalid value for 'receive_email', receive_email cannot be nil.")
      end

      if @receive_sms.nil?
        invalid_properties.push("invalid value for 'receive_sms', receive_sms cannot be nil.")
      end

      if @password.nil?
        invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @alternate_id.nil?
      return false if @type.nil?
      return false if @first_name.nil?
      return false if @surname.nil?
      return false if @date_of_brith.nil?
      return false if @date_of_birth.nil?
      return false if @shipping_address.nil?
      return false if @mailing_address.nil?
      return false if @home_phone.nil?
      return false if @mobile_phone.nil?
      return false if @email_address.nil?
      return false if @mailing_address_active.nil?
      return false if @accounts.nil?
      return false if @classifications.nil?
      return false if @member_photo.nil?
      return false if @member_photo !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @gender.nil?
      return false if @receive_email.nil?
      return false if @receive_sms.nil?
      return false if @password.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] member_photo Value to be assigned
    def member_photo=(member_photo)
      if member_photo.nil?
        fail ArgumentError, "member_photo cannot be nil"
      end

      if member_photo !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, "invalid value for 'member_photo', must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/."
      end

      @member_photo = member_photo
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          alternate_id == o.alternate_id &&
          type == o.type &&
          first_name == o.first_name &&
          surname == o.surname &&
          date_of_brith == o.date_of_brith &&
          date_of_birth == o.date_of_birth &&
          shipping_address == o.shipping_address &&
          mailing_address == o.mailing_address &&
          home_phone == o.home_phone &&
          mobile_phone == o.mobile_phone &&
          email_address == o.email_address &&
          mailing_address_active == o.mailing_address_active &&
          accounts == o.accounts &&
          classifications == o.classifications &&
          member_photo == o.member_photo &&
          gender == o.gender &&
          receive_email == o.receive_email &&
          receive_sms == o.receive_sms &&
          password == o.password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, alternate_id, type, first_name, surname, date_of_brith, date_of_birth, shipping_address, mailing_address, home_phone, mobile_phone, email_address, mailing_address_active, accounts, classifications, member_photo, gender, receive_email, receive_sms, password].hash
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
