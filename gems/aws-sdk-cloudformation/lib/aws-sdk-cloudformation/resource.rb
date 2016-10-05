# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFormation
    class Resource

      # @param options ({})
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new(options)
      end

      # @return [Client]
      def client
        @client
      end

      # @!group Actions

      # @example Request syntax with placeholder values
      #
      #   stack = cloud_formation.create_stack({
      #     stack_name: "StackName", # required
      #     template_body: "TemplateBody",
      #     template_url: "TemplateURL",
      #     parameters: [
      #       {
      #         parameter_key: "ParameterKey",
      #         parameter_value: "ParameterValue",
      #         use_previous_value: false,
      #       },
      #     ],
      #     disable_rollback: false,
      #     timeout_in_minutes: 1,
      #     notification_arns: ["NotificationARN"],
      #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #     resource_types: ["ResourceType"],
      #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
      #     stack_policy_body: "StackPolicyBody",
      #     stack_policy_url: "StackPolicyURL",
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [required, String] :stack_name
      #   The name that is associated with the stack. The name must be unique in
      #   the region in which you are creating the stack.
      #
      #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
      #   and hyphens. It must start with an alphabetic character and cannot be
      #   longer than 128 characters.
      #
      #    </note>
      # @option options [String] :template_body
      #   Structure containing the template body with a minimum length of 1 byte
      #   and a maximum length of 51,200 bytes. For more information, go to
      #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option options [String] :template_url
      #   Location of file containing the template body. The URL must point to a
      #   template (max size: 460,800 bytes) that is located in an Amazon S3
      #   bucket. For more information, go to the [Template Anatomy][1] in the
      #   AWS CloudFormation User Guide.
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option options [Array<Types::Parameter>] :parameters
      #   A list of `Parameter` structures that specify input parameters for the
      #   stack. For more information, see the [Parameter][1] data type.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
      # @option options [Boolean] :disable_rollback
      #   Set to `true` to disable rollback of the stack if stack creation
      #   failed. You can specify either `DisableRollback` or `OnFailure`, but
      #   not both.
      #
      #   Default: `false`
      # @option options [Integer] :timeout_in_minutes
      #   The amount of time that can pass before the stack status becomes
      #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
      #   the stack will be rolled back.
      # @option options [Array<String>] :notification_arns
      #   The Simple Notification Service (SNS) topic ARNs to publish stack
      #   related events. You can find your SNS topic ARNs using the [SNS
      #   console][1] or your Command Line Interface (CLI).
      #
      #
      #
      #   [1]: https://console.aws.amazon.com/sns
      # @option options [Array<String>] :capabilities
      #   A list of values that you must specify before AWS CloudFormation can
      #   create certain stacks. Some stack templates might include resources
      #   that can affect permissions in your AWS account, for example, by
      #   creating new AWS Identity and Access Management (IAM) users. For those
      #   stacks, you must explicitly acknowledge their capabilities by
      #   specifying this parameter.
      #
      #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
      #   The following resources require you to specify this parameter: [
      #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
      #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
      #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
      #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
      #   these resources, we recommend that you review all permissions
      #   associated with them and edit their permissions if necessary.
      #
      #   If you have IAM resources, you can specify either capability. If you
      #   have IAM resources with custom names, you must specify
      #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
      #   action returns an `InsufficientCapabilities` error.
      #
      #   For more information, see [Acknowledging IAM Resources in AWS
      #   CloudFormation Templates][8].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
      #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
      #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
      #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
      #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
      #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
      #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
      #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
      # @option options [Array<String>] :resource_types
      #   The template resource types that you have permissions to work with for
      #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
      #   or `Custom::MyCustomInstance`. Use the following syntax to describe
      #   template resource types: `AWS::*` (for all AWS resource), `Custom::*`
      #   (for all custom resources), `Custom::logical_ID ` (for a specific
      #   custom resource), `AWS::service_name::*` (for all resources of a
      #   particular AWS service), and `AWS::service_name::resource_logical_ID `
      #   (for a specific AWS resource).
      #
      #   If the list of resource types doesn't include a resource that you're
      #   creating, the stack creation fails. By default, AWS CloudFormation
      #   grants permissions to all resource types. AWS Identity and Access
      #   Management (IAM) uses this parameter for AWS CloudFormation-specific
      #   condition keys in IAM policies. For more information, see [Controlling
      #   Access with AWS Identity and Access Management][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
      # @option options [String] :on_failure
      #   Determines what action will be taken if stack creation fails. This
      #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
      #   either `OnFailure` or `DisableRollback`, but not both.
      #
      #   Default: `ROLLBACK`
      # @option options [String] :stack_policy_body
      #   Structure containing the stack policy body. For more information, go
      #   to [ Prevent Updates to Stack Resources][1] in the AWS CloudFormation
      #   User Guide. You can specify either the `StackPolicyBody` or the
      #   `StackPolicyURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
      # @option options [String] :stack_policy_url
      #   Location of a file containing the stack policy. The URL must point to
      #   a policy (max size: 16KB) located in an S3 bucket in the same region
      #   as the stack. You can specify either the `StackPolicyBody` or the
      #   `StackPolicyURL` parameter, but not both.
      # @option options [Array<Types::Tag>] :tags
      #   Key-value pairs to associate with this stack. AWS CloudFormation also
      #   propagates these tags to the resources created in the stack. A maximum
      #   number of 10 tags can be specified.
      # @return [Stack]
      def create_stack(options = {})
        resp = @client.create_stack(options)
        Stack.new(
          name: options[:stack_name],
          client: @client
        )
      end

      # @!group Associations

      # @param [String] id
      # @return [Event]
      def event(id)
        Event.new(
          id: id,
          client: @client
        )
      end

      # @param [String] name
      # @return [Stack]
      def stack(name)
        Stack.new(
          name: name,
          client: @client
        )
      end

      # @example Request syntax with placeholder values
      #
      #   stacks = cloud_formation.stacks({
      #     stack_name: "StackName",
      #   })
      # @param [Hash] options ({})
      # @option options [String] :stack_name
      #   The name or the unique stack ID that is associated with the stack,
      #   which are not always interchangeable:
      #
      #   * Running stacks: You can specify either the stack's name or its
      #     unique stack ID.
      #
      #   * Deleted stacks: You must specify the unique stack ID.
      #
      #   Default: There is no default value.
      # @return [Stack::Collection]
      def stacks(options = {})
        batches = Enumerator.new do |y|
          resp = @client.describe_stacks(options)
          resp.each_page do |page|
            batch = []
            page.data.stacks.each do |s|
              batch << Stack.new(
                name: s.stack_name,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Stack::Collection.new(batches)
      end

    end
  end
end
