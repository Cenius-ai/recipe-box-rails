Rails.application.config.content_security_policy do |policy|
  policy.default_src :self
  policy.font_src    :self
  policy.style_src   :self, :unsafe_inline
  policy.img_src     :self, :data
  policy.connect_src :self
  policy.frame_src   :none
  policy.object_src  :none
end
