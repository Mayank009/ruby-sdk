module Horntell
	class Campaign
		extend Horntell::Http::Request

		# triggers campaign for single profile
		def self.to_profile(uid, campaignId, meta = nil)
			meta = { :meta => meta }

			return raw_request('post', "/profiles/#{uid}/campaigns/#{campaignId}", meta)
		end

		#triggers campaign for multiple profile
		def self.to_profiles(profiles, campaignId, meta = nil)
			profiles = { :profile_uids => profiles, :meta => meta }

			return raw_request('post', "/profiles/campaigns/#{campaignId}", profiles)
		end
	end
end