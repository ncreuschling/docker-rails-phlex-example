class InformationLogoSVG < Phlex::SVG
  def view_template
    svg class: "w-6 h-6 text-white", fill: "none", stroke: "currentColor", viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg" do
      path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
    end
  end
end
