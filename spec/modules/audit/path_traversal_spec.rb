require 'spec_helper'

describe name_from_filename do
    include_examples 'module'

    def self.targets
        %w(Unix Windows Tomcat)
    end

    def self.elements
        [ Element::FORM, Element::LINK, Element::COOKIE, Element::HEADER ]
    end

    def issue_count_per_target
        {
            unix:    56,
            windows: 84,
            tomcat:  6
        }
    end

    easy_test
end
