import ranger.api
import ranger.core.linemode


@ranger.api.register_linemode     # It may be used as a decorator too!
class MyLinemode(ranger.core.linemode.LinemodeBase):
    name = "comm"

    uses_metadata = True
    required_metadata = ["co"]

    def filetitle(self, file, metadata):
        return file.relative_path
        # return file.relative_path + " (" + metadata.comment + ")"

    def infostring(self, file, metadata):
        return metadata.co
        # return file.user
