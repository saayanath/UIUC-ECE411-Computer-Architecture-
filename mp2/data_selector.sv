import lc3b_types::*;

module data_selector
(
	input lc3b_index sel,
	input lc3b_mem_wmask mem_byte_enable,
	input lc3b_line data,
	input lc3b_word word_in,
	output lc3b_line out
);

always_comb
begin 
	out = data;
	case(sel)
		3'b000:begin
			if(mem_byte_enable == 2'b01)
				out[7:0] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[15:8] = word_in[15:8];
			else
				out[15:0] = word_in[15:0];
		end
		3'b001:begin
			if(mem_byte_enable == 2'b01)
				out[23:16] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[31:24] = word_in[15:8];
			else
				out[31:16] = word_in[15:0];
		end
		3'b010:begin
			if(mem_byte_enable == 2'b01)
				out[39:32] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[47:40] = word_in[7:0];
			else
				out[47:32] = word_in[15:0];
		end
		3'b011:begin
			if(mem_byte_enable == 2'b01)
				out[55:48] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[63:56] = word_in[7:0];
			else
				out[63:48] = word_in[15:0];
		end
		3'b100:begin
			if(mem_byte_enable == 2'b01)
				out[71:64] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[79:72] = word_in[7:0];
			else
				out[79:64] = word_in[15:0];
		end
		3'b101:begin
			if(mem_byte_enable == 2'b01)
				out[87:80] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[95:88] = word_in[7:0];
			else
				out[96:80] = word_in[15:0];
		end
		3'b110:begin
			if(mem_byte_enable == 2'b01)
				out[103:96] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[111:104] = word_in[7:0];
			else
				out[111:96] = word_in[15:0];
		end
		3'b111:begin
			if(mem_byte_enable == 2'b01)
				out[119:112] = word_in[7:0];
			else if(mem_byte_enable == 2'b10)
				out[127:120] = word_in[7:0];
			else
				out[127:112] = word_in[15:0];
		end
		endcase
end

endmodule : data_selector