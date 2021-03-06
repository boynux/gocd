##########################################################################
# Copyright 2016 ThoughtWorks, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###########################################################
module ApiV1
  module Plugin
    class PluginMetadataRepresenter < BaseRepresenter
      property :secure,
               exec_context: :decorator

      property :required,
               exec_context: :decorator

      property :part_of_identity,
               exec_context: :decorator

      def secure
        represented['secure']
      end

      def required
        represented['required']
      end

      def part_of_identity
        represented['part_of_identity']
      end
    end
  end
end