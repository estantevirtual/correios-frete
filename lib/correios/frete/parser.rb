# encoding: UTF-8
require 'nokogiri'

module Correios
  module Frete
    class Parser
      def servicos(xml)
        servicos = {}
        xml = xml.encode("UTF-8", "ISO-8859-1")
        root = Nokogiri::XML(xml).root

        return unless root

        root.elements.each do |element|
          servico = Correios::Frete::Servico.new.parse(element.to_xml)
          servicos[servico.tipo] = servico
        end

        servicos
      end
    end
  end
end
