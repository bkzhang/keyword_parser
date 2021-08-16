defmodule Parser do
  use Rustler, otp_app: :keywords, crate: "parser"

  # When your NIF is loaded, it will override this function.
  def find_matches(_a, _b), do: :erlang.nif_error(:nif_not_loaded)

end