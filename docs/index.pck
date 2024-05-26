GDPC                                                                                       $   X   res://.godot/exported/133200997/export-18e962876256ba8fdc48ccdb9c9cff2a-roboto_bold.res  �     �      3�Q׵�M�@
    T   res://.godot/exported/133200997/export-680c3b90db1a112fd95fa67cfc035350-BarGraph.scn0�      �      ���H�Z�~�X�I    X   res://.godot/exported/133200997/export-7c5b28a8b4e4a80306957b0dbed5365f-many_dice.scn   @     �      �����5�$yOp���    \   res://.godot/exported/133200997/export-be239d24c8baf9dcdc3c84351753d4e7-roboto_regular.res  �     �      � �P~���x���ԗ    T   res://.godot/exported/133200997/export-f4c31637c32af98e1ae2665a7bbcf632-theme.res   0     n      ��T��%rt�@��TP�    ,   res://.godot/global_script_class_cache.cfg  `(     �      ��@/x4�O�@YN��    P   res://.godot/imported/Roboto-Bold.ttf-dfb0e5365b2133e02602e9c201c79ad1.fontdata  �      i�     bۦ_�4GQ�:u���    T   res://.godot/imported/Roboto-Regular.ttf-cc0d0121c13336ac418b94785d726aff.fontdata  @e     �     :L����Y����    D   res://.godot/imported/icon.png-487276ed1e3a0c39cad0279d744ee560.ctex�     �      �u=�D�Q�`L��|    X   res://.godot/imported/index.apple-touch-icon.png-b21a756d869f84af832970a74d8371bc.ctex  0q      �      �HVW)��`Ĵdl�    L   res://.godot/imported/index.icon.png-b92c9a802ad4b78e247784454a6b506f.ctex  ��      �      �u=�D�Q�`L��|    H   res://.godot/imported/index.png-0c78d14d192abe5f22f8c25928ca1ab8.ctex   p�      -      �%�$����<�׿�+    H   res://.godot/imported/white.png-4ef1bbba8a0c1547193e0498e005f4f6.ctex   ��      ^       g���ϣ^2�Y��x2/       res://.godot/uid_cache.bin  �8     i      �9�A9��]|J&�    (   res://addons/dice_syntax/array_logic.gd         �      c@���!S�9�|�@R    (   res://addons/dice_syntax/dice_helpers.gd�      �      k������z�_d\��    (   res://addons/dice_syntax/dice_syntax.gd �      N      ��q|�&�?�S_    $   res://addons/dice_syntax/plugin.gd   /      R       ¡�������N��    ,   res://addons/dice_syntax/single_dice_funs.gd`/      :      [�a�y3�]�3��*    (   res://addons/dice_syntax/string_manip.gdpi      �      ��|Z�e�B��?-m    ,   res://docs/index.apple-touch-icon.png.import �      �       ҃9�4��p��Hv?��        res://docs/index.icon.png.import��      �       'U�	��{�3ȵ)?�%       res://docs/index.png.import ��      �       &|ƛ���L�/�W��/       res://icon.png  @*     :      *q(Wꭶ'�!� 
�#       res://icon.png.import   `     �       B7���
orxU       res://many_dice.gd  0           ^wTv|.�\VZ��ʏ       res://many_dice.tscn.remap  �'     f       ĚZ�g��J��6�4�       res://project.binary�9     j      ����4��j���        res://utils/BarGraph/BarGraph.gd`�      �      ��U�:V�[p_    (   res://utils/BarGraph/BarGraph.tscn.remap0&     e       9
D��5��c�jh�\�b    (   res://utils/BarGraph/white.png.import   P�      �       ���"�3��	��BU    (   res://utils/Fonts/Roboto-Bold.ttf.import�d     �       ��ﵘ��:h��@|    ,   res://utils/Fonts/Roboto-Regular.ttf.import P�     �       T~�f%���	���I    (   res://utils/Fonts/roboto_bold.tres.remap�&     h       s'��6eP�om�W��?    ,   res://utils/Fonts/roboto_regular.tres.remap '     k       ˕E*��]�r�B��f       res://utils/theme.tres.remap�'     b       ��;؞�qH��b[����                extends GDScript
# functions meant to deal with numeric arrays


# check if all is true in an array
static func all(array:Array)->bool:
	var out = true
	for x in array:
		if !x:
			out = false
	return out

# true if any is true in an array
static func any(array:Array)->bool:
	var out = false
	for x in array:
		if x:
			out = true
	return out

# sum of trues in an array
static func sum_bool(array:Array)->int:
	var out:int = 0
	for x in array:
		if x:
			out +=1
	return out

# sum of numbers in the array
static func sum(array:Array)->float:
	var out:float = 0
	for x in array:
		out += x
	return(out)

# get mean of array
static func mean(array:Array)->float:
	var out:float = 0
	return float(sum(array))/array.size()

# multiply array elements by factor
static func multiply_array(array:Array,mult:float)->Array:
	var out:Array
	for x in array:
		out.append(x*mult)
	return out

# add a number to array elements
static func add_to_array(array:Array,add:float)->Array:
	var out:Array
	for x in array:
		out.append(x+add)
	return out

# check if elements of an array are in another array
static func array_in_array(array:Array,target:Array)->Array:
	var out:Array
	for i in range(array.size()):
		out.append(target.find(array[i]) != -1)
	return out

# return which indexes contain the elemnts of an array
static func which_in_array(array:Array,target:Array)->Array:
	var out:Array
	for i in range(array.size()):
		if target.find(array[i]) != -1:
			out.append(i)
	return out

# return true indexes in an array
static func which(array:Array)->Array:
	var out:Array
	for i in range(array.size()):
		if array[i]:
			out.append(i)
	return out

static func order(array:Array)->Array:
	var out:Array
	var sorted = array.duplicate()
	sorted.sort()
	for x in array:
		out.append(sorted.find(x))
	return out

static func array_compare(array:Array,reference:float,equal:bool = false,less:bool = false, greater:bool = false)->Array:
	var out:Array
	
	for x in array:
		var result = false
		if equal:
			if x == reference:
				result = true
		if less:
			if x < reference:
				result = true
		if greater:
			if x > reference:
				result = true
		out.append(result)
				
	
	return out

static func array_not(array:Array)->Array:
	var out:Array
	for x in array:
		out.append(not x)
	return out

static func array_subset(array:Array, indices:Array)->Array:
	var out:Array
	for i in indices:
		out.append(array[i])
	return out

static func sample(array:Array,n:int,rng:RandomNumberGenerator, replace:bool = true)->Array:
	var out:Array = []
	if not replace and n>array.size():
		push_error('Cannot take a sample larger than the population when replace = false')
		return out
	for i in range(n):
		var samp = rng.randi_range(0,array.size()-1)
		out.append(array[samp])
		if not replace:
			array.remove_at(samp)
		
	
	
	return out

# append single elements/arrays with each other
static func append(e1,e2)->Array:
	var out = []
	if typeof(e1)==TYPE_ARRAY:
		out.append_array(e1)
	else:
		out.append(e1)
	if typeof(e2)==TYPE_ARRAY:
		out.append_array(e2)
	else:
		out.append(e2)
	return out

# sample from an array using given weights
static func sample_weights(array:Array, weights: Array, n:int, rng:RandomNumberGenerator, replace:bool = true)->Array:
	var out:Array = []
	var sm = sum(weights)
	weights[0] = float(weights[0])/float(sm)
	for i in range(1,weights.size()):
		weights[i] = float(weights[i])/float(sm) + weights[i-1]
	
	
	for i in range(n):
		var rand = rng.randf()
		var curr_index = 0
		while rand > weights[curr_index]:
			curr_index += 1
		out.append(array[curr_index])
	
	return out

static func table(array:Array) -> Dictionary:
	var out:Dictionary
	
	for x in array:
		if x in out.keys():
			out[x] = out[x]+1
		else:
			out[x] = 1
	
	return out

static func tests():
	print('testing logic functions')
	var true_true = [true,true]
	var true_false = [true,false]
	var false_false = [false,false]
	
	assert(sum_bool(true_true) == 2,"bad sum")
	assert(sum_bool(true_false) == 1,"bad sum")
	assert(sum_bool(false_false) == 0, 'bad sum')
	assert(any(true_false),'bad any')
	assert(all(true_true),'bad all')
	assert(!all(true_false),'bad all')
	assert(any(array_in_array(true_false,true_true)),'bad array_in_array')
	assert(!all(array_in_array(true_false,true_true)),'bad array_in_array')
              extends GDScript

# convert integer to a different base, return the result as an array of digits
static func base_convert(number:int,base:int)->Array:
	var current_num = number
	var remainder:int
	var result:int
	var digits = []
	while true:
		result = current_num/base
		remainder = current_num%base
		digits.append(remainder)
		if result > remainder:
			current_num = result
		else:
			if result != 0:
				digits.append(result)
			break
	digits.reverse()
	return digits	

# convert integer inter to base 26 and return as letters for use as names in expressions
static func int_to_letter(number:int)->String:
	var letters = 'zabcdefghijklmnopqrstuvwxy'
	var num_array = base_convert(number,letters.length())
	var out:String
	
	for x in num_array:
		out += letters[x]
	
	return out

# keys are dice totals
static func merge_probs(prob1:Dictionary, prob2:Dictionary)-> Dictionary:
	var out:Dictionary
	for i in prob1.keys():
		for j in prob2.keys():
			add_to_dict(out,i+j,prob1[i]*prob2[j])
	return out

# keys are individual dice
static func merge_probs_keep_dice(prob1:Dictionary, prob2:Dictionary, sort:bool = true)->Dictionary:
	var al = preload('array_logic.gd')
	var out:Dictionary
	for i in prob1.keys():
		for j in prob2.keys():
			var new_key:Array = al.append(i,j)
			if sort:
				new_key.sort()
			add_to_dict(out,new_key,prob1[i]*prob2[j])
			
			# out[new_key] = prob1[i]*prob2[j]
	return out

# if element exists in dictionary, add to the existing value, if not create element
static func add_to_dict(dict:Dictionary,key,value):
	if dict.has(key):
		dict[key] += value
	else:
		dict[key] = value

# calculations for exploding and compounding dice
static func blow_up(probs:Dictionary,blow_dice:Array, depth = 3)-> Dictionary:
	var base_probs = probs.duplicate()
	for d in range(depth-1):
		var blown_up:Dictionary
		for k in probs.keys():
			if k.back() in blow_dice:
				for i in base_probs.keys():
					var new_key = k.duplicate()
					new_key.append_array(i)
					var new_value = base_probs[i]*probs[k]
					blown_up[new_key] = new_value
			else:
				blown_up[k] = probs[k]
		probs = blown_up
	
	return probs

static func collapse_probs(probs:Dictionary, array_keys:bool = true)-> Dictionary:
	var al = preload('array_logic.gd')
	var out: Dictionary
	var temp: Dictionary
	for k in probs.keys():
		var new_key = al.sum(k)
		add_to_dict(temp,new_key,probs[k])
	
	# if returned dictionary should have arrays as keys, re-transform
	if array_keys:
		for k in temp.keys():
			out[[k]] = temp[k] 
	else:
		out = temp
	
	return out

# add error information to the output if something goes wrong.
# dictionaries are passed by reference
static func dice_error(condition:bool,message:String,rolling_rules:Dictionary):
	if(!condition):
		push_error(message)
		rolling_rules['error'] = true
		rolling_rules['msg'].append(message)


static func range_determine(token:String,dice_side:int,regex:RegEx = RegEx.new(),rolling_rules:Dictionary={} ,default:int = 1)-> PackedInt64Array:
	var sm = preload('string_manip.gd')
	var out:PackedInt64Array = []
	var number = sm.str_extract(token,'[0-9]*$', regex)
	dice_error(!(sm.str_detect(token,'<',regex) and sm.str_detect(token,">",regex)),'Invalid dice: A range clause can only have one of "<" or ">"',rolling_rules)
	dice_error(!(sm.str_detect(token,'<|>|=',regex) and number ==''),'Invalid dice: Using  "<", ">" or "=" operators requires an integer',rolling_rules)
	if !sm.str_detect(token,"<|>",regex) and number == '':
		out.append(default)
	elif number != '' and !sm.str_detect_rg(token, regex):
		out.append(number.to_int())
	elif sm.str_detect(token,"<" ,regex) and number != '':
		out.append_array(range(1,number.to_int()+1))
	elif sm.str_detect(token,">", regex) and number != '':
		out.append_array(range(number.to_int(),dice_side+1))
	
	return out
  extends GDScript
class_name dice_syntax





static func dice_parser(dice:String,regex:RegEx = RegEx.new())->Dictionary:
	var sm = preload('string_manip.gd')
	var sdf = preload('single_dice_funs.gd')
	var dh = preload('dice_helpers.gd')
	var error = false
	var msg = []
	var dice_regex = '[0-9]*d[0-9]+[dksfro!<=>0-9lh]*'
	
	
	regex.compile(dice_regex)
	var dice_components = sm.str_extract_all_rg(dice,regex)
	var dice_expression_compoments = sm.str_split_rg(dice,regex)
	var dice_expression = ''
	var dice_letters = []
	for i in range(dice_expression_compoments.size()):
		dice_expression += dice_expression_compoments[i]
		if i < dice_components.size():
			dice_letters.append(dh.int_to_letter(i))
			dice_expression += dice_letters[i]
	var rules_array = []
	for x in dice_components:
		var rr = sdf.base_dice_parser(x,regex)
		if rr.error:
			error = true
			msg.append_array(rr.msg)
	
		rules_array.append(rr)
	
	var expression = Expression.new()
	expression.parse(dice_expression,dice_letters)
	
	# test execution to see if it's valid
	var test_out = []
	for i in range(dice_letters.size()):
		test_out.append(1.0)
	
	expression.execute(test_out)
	if expression.has_execute_failed() or expression.get_error_text()!='':
		error = true
		msg.append('Expression fails to execute')
	
	
	var bad_regex = "(^|[+\\-*/% ])[0-9]+[a-zA-Z]"
	regex.compile(bad_regex)
	
	if sm.str_detect_rg(dice_expression,regex):
		error = true
		msg.append('Invalid numeric notation')
	
	
	return {
		'rules_array':rules_array,
		'dice_expression':expression,
		'expression_string':dice_expression,
		'error':error,
		'msg':msg}

static func roll_parsed(rules:Dictionary, rng:RandomNumberGenerator = RandomNumberGenerator.new())->Dictionary:
	var sdf = preload('single_dice_funs.gd')
	var results:Array
	var roll_sums:Array
	var error = rules.error
	var msg = rules.msg
	
	for i in range(rules.rules_array.size()):
		var result = sdf.base_rule_roller(rules.rules_array[i],rng)
		results.append(result)
		roll_sums.append(result.result)
	
	var sum = rules.dice_expression.execute(roll_sums)
	
	if error:
		sum = 0
	
	return {'result':sum, 'rolls':results,'error': error, 'msg': msg}

static func roll(dice:String, rng:RandomNumberGenerator = RandomNumberGenerator.new())->Dictionary:
	var rules = dice_parser(dice)
	return roll_parsed(rules,rng)

static func parsed_dice_probs(rules, explode_depth:int=1)->Dictionary:
	var dh = preload('dice_helpers.gd')
	var al = preload('array_logic.gd')
	var sdf = preload('single_dice_funs.gd')
	var final_result = {}
	var error = rules.error
	for i in range(rules.rules_array.size()):
		var result = sdf.base_calc_rule_probs(rules.rules_array[i],explode_depth)
		if i == 0: # if it's the first iteration populate the dictionary
			for x in result.keys():
				final_result[[x]] = result[x]
		else:
			final_result = dh.merge_probs_keep_dice(final_result,result,false)
	
	if error:
		return {0.0:1.0}
	
	var processed_results = {}
	for x in final_result.keys():
		var new_key = rules.dice_expression.execute(x)
		dh.add_to_dict(processed_results,new_key,final_result[x])
	
	if final_result.size()==0:
		processed_results[float(rules.dice_expression.execute())] = 1
	
	return processed_results

static func dice_probs(dice:String,explode_depth:int=1,regex = RegEx.new())->Dictionary:
	var rules = dice_parser(dice,regex)
	return parsed_dice_probs(rules,explode_depth)


static func expected_value(probs:Dictionary)->float:
	var out = 0
	for k in probs.keys():
		out += probs[k]*float(k)
	return(out)

static func standard_deviation(probs:Dictionary)->float:
	var out = 0
	var mean = expected_value(probs)
	for k in probs.keys():
		out += pow(float(k)-mean,2)*probs[k]
	return pow(out,0.5)

static func roll_from_probs(probs:Dictionary,rng:RandomNumberGenerator = RandomNumberGenerator.new(),n=1)->Array:
	var al = preload('array_logic.gd')
	return al.sample_weights(probs.keys(),probs.values(),n,rng)
	
  @tool
extends EditorPlugin


func _enter_tree():
	pass


func _exit_tree():
	pass
              extends GDScript
# internal functions that parse single dice rolls


# basic dice parser for single rolls

static func base_dice_parser(dice_string:String,regex:RegEx = RegEx.new())->Dictionary:
	var sm = preload('string_manip.gd')
	var al = preload('array_logic.gd')
	var dh = preload('dice_helpers.gd')
	var rolling_rules: Dictionary = {
	'error': false, 
	'msg': [],
	'compound':[],
	'explode':[],
	'reroll_once': [],
	'reroll': [],
	'possible_dice': [],
	'drop_dice':0,
	'drop_lowest':true,
	'drop_keep_specific': [],
	'drop_specific': true,
	'dice_side':0,
	'dice_count':0,
	'success': [],
	'fail': [],
	'sort':false
	}
	var valid_tokens = '[dksfr!<=>hl]'
	dice_string = dice_string.to_lower()
	var used_tokens:PackedInt64Array
	
	# get the dice count or default to 1 if we just start with d.
	var result = sm.str_extract(dice_string,'^[0-9]*?(?=d)',regex)
	dh.dice_error(result!=null,'Invalid dice: Cannot determine dice count',rolling_rules)
	if result == '':
		rolling_rules['dice_count'] = 1
	elif result == null:
		return rolling_rules
	elif result.is_valid_int():
		rolling_rules['dice_count'] = result.to_int()
	
	# tokenize the rest of the rolling rules. a token character, followed by the
	# next valid token character or end of string
	var tokens:PackedStringArray = sm.str_extract_all(dice_string,
		valid_tokens + '.*?((?=' + valid_tokens + ')|$)',regex)
	var dice_side = sm.str_extract(tokens[0],'(?<=d)[0-9]+$',regex)
	dh.dice_error(dice_side != null, "Invalid dice: Unable to detect dice sides",rolling_rules)
	if dice_side!=null:
		rolling_rules['dice_side'] = dice_side.to_int()
	else:
		return rolling_rules
	# remove dice side token to make sure it's not confused with the drop rule
	tokens.remove_at(0)
	
	
	

	# check for drop modifiers
	var drop_modifiers:PackedInt64Array =  sm.strs_detect(tokens,'^(h|l)[0-9]+$',regex)
	# check for range specifications
	var ranges:Array =  sm.strs_detect(tokens,"^[<=>][0-9]+$",regex)
	
	# s can mean sort or success depending on context
	var sort_or_success = sm.strs_detect(tokens,'^s[0-9]*$',regex)
	var success:Array = []
	for i in sort_or_success:
		used_tokens.append(i)
		var token:String = tokens[i]
		var is_sort:bool = true
		if i+1 in ranges and !sm.str_detect(token,"[0-9]",regex):
			used_tokens.append(i+1)
			token = token + tokens[i+1]
			is_sort = false
		elif sm.str_detect(token,"[0-9]",regex):
			is_sort = false
		
		if is_sort:
			dh.dice_error(!rolling_rules['sort'], "Invalid dice: Can't sort twice",rolling_rules)
			rolling_rules['sort'] = true
		else:
			success.append_array(dh.range_determine(token, rolling_rules['dice_side'],regex,rolling_rules))
	rolling_rules['success'] = success
	
	# fail range
	var fail_tokens =  sm.strs_detect(tokens,'^f[0-9]*$',regex)
	var fail:Array = []
	for i in fail_tokens:
		used_tokens.append(i)
		var fail_token = tokens[i]
		dh.dice_error(i+1 in ranges or sm.str_detect(fail_token,"[0-9]",regex), "Invalid dice: Fails must include a range",rolling_rules)
		if i+1 in ranges and !sm.str_detect(fail_token,"[0-9]",regex):
			used_tokens.append(i+1)
			fail_token = fail_token + tokens[i+1]
			
		fail.append_array(dh.range_determine(fail_token, rolling_rules['dice_side'],regex,rolling_rules))
	rolling_rules['fail'] = fail
	
	
	
	# drop rules
	var drop_rules:Array = sm.strs_detect(tokens,'^(d|k)[0-9]*$',regex)
	for i in drop_rules:
		used_tokens.append(i)
		# look for the drop count in the current token
		var drop_count = sm.str_extract(tokens[i],'[0-9]+$', regex)
		var drop_rule:String = tokens[i]
		# if drop count isn't found
		if drop_count == null and i+1 in drop_modifiers:
			# next token is a drop modifier, it must come with a drop count
			dh.dice_error(rolling_rules['drop_dice'] == 0, "Invalid dice: Can't include more than one drop count",rolling_rules)
			drop_count = sm.str_extract_rg(tokens[i+1],regex)
			drop_rule = tokens[i] + tokens[i+1]
			used_tokens.append(i+1)
		elif drop_count == null and i+1 in ranges:
			# next token is a range. drop specific results
			var drop_range = dh.range_determine(tokens[i+1],rolling_rules['dice_side'],regex,rolling_rules)
			match drop_rule.substr(0,1):
				"d": 
					dh.dice_error(rolling_rules['drop_specific'],"Invalid dice: Can't specify both dropping and keeping specific dice",rolling_rules)
					rolling_rules['drop_specific'] = true
					pass
				'k':
					dh.dice_error(!rolling_rules['drop_specific'] or rolling_rules['drop_keep_specific'].size()==0,"Invalid dice: Can't specify both dropping and keeping specific dice",rolling_rules)
					rolling_rules['drop_specific'] = false
					pass
			rolling_rules['drop_keep_specific'].append_array(drop_range)
			used_tokens.append(i+1)
			drop_count = ""

		dh.dice_error(drop_count!= null, 'Invalid: No drop count provided',rolling_rules)
		# dropping specific results will set drop count to "", if not, we still
		# need to process the drop count
		if drop_count!="" and drop_count != null:
			match drop_rule.substr(0,1):
				'd':
					rolling_rules['drop_dice'] = drop_count.to_int()
				'k':
					rolling_rules['drop_dice'] = rolling_rules['dice_count']-drop_count.to_int()
			
			regex.compile('dh')
			var dl1 = sm.str_detect_rg(drop_rule,regex)
			regex.compile('kl')
			var dl2 = sm.str_detect_rg(drop_rule,regex)
			rolling_rules['drop_lowest'] = !(dl1 or dl2)
	
	# reroll rules
	var reroll_rules = sm.strs_detect(tokens,'^r(?!o)[0-9]*$',regex)
	var reroll:Array = []
	for i in reroll_rules:
		used_tokens.append(i)
		var reroll_token = tokens[i]
		if i+1 in ranges and !sm.str_detect(reroll_token,"[0-9]",regex):
			used_tokens.append(i+1)
			reroll_token = reroll_token+tokens[i+1]
		reroll.append_array(dh.range_determine(reroll_token, rolling_rules['dice_side'],regex,rolling_rules))
		
	var dicePossibilities = range(1,rolling_rules['dice_side']+1)
	# dice_error(!al.all(al.array_in_array(dicePossibilities,reroll)),'Malformed dice string: rerolling all results',rolling_rules)
	rolling_rules['reroll'] = reroll
	# remove reroll rules

	
	# reroll once
	reroll_rules = sm.strs_detect(tokens,'^ro[0-9]*$',regex)
	var reroll_once:Array = []
	for i in reroll_rules:
		used_tokens.append(i)
		var reroll_token = tokens[i]
		if i+1 in ranges and !sm.str_detect(reroll_token,"[0-9]",regex):
			used_tokens.append(i+1)
			reroll_token = reroll_token+tokens[i+1]
		
		reroll_once.append_array(dh.range_determine(reroll_token, rolling_rules['dice_side'],regex,rolling_rules))
	
	dh.dice_error(al.table(reroll_once).values().filter(func(x):return x>1).size()==0,
		"Invalid dice: can't reroll the same number once more than once.",
		rolling_rules)
	rolling_rules['reroll_once'] = reroll_once
	
	
	# new explode rules
	regex.compile('^![0-9]*$')
	var explode_rules = sm.strs_detect_rg(tokens,regex)
	var explode:Array = []
	var compound: Array = []
	var compound_flag:bool = false
	
	for i in explode_rules:
		used_tokens.append(i)
		if tokens[i] == "!" and i + 1 in explode_rules and not compound_flag:
			compound_flag = true
		elif not compound_flag:
			var explode_token = tokens[i]
			if i+1 in ranges and !sm.str_detect(explode_token,"[0-9]",regex):
				used_tokens.append(i+1)
				explode_token = explode_token + tokens[i+1]
			
			explode.append_array(
				dh.range_determine(explode_token, 
					rolling_rules['dice_side'],
					regex,rolling_rules,
					rolling_rules['dice_side']))
		elif compound_flag:
			compound_flag = false
			var compound_token = tokens[i]
			if i+1 in ranges and !sm.str_detect(compound_token,"[0-9]",regex):
				used_tokens.append(i+1)
				compound_token = compound_token + tokens[i+1]
			
			compound.append_array(
				dh.range_determine(compound_token, 
					rolling_rules['dice_side'],
					regex,rolling_rules,
					rolling_rules['dice_side']))
	
	rolling_rules['explode'] = explode
	rolling_rules['compound'] = compound
	
	# all tokens are processed
	dh.dice_error(range(tokens.size()).all(func(x):return x in used_tokens), 
		'Invalid dice: Unprocessed tokens',rolling_rules)
	
	# every token is processed only once
	dh.dice_error(al.table(used_tokens).values().all(func(x):return x == 1),
		'Invalid dice: Ambigious tokens', rolling_rules)
	

	var possible_dice = range(1,rolling_rules.dice_side+1)
	possible_dice = al.array_subset(possible_dice,al.which(al.array_not(al.array_in_array(possible_dice, rolling_rules.reroll))))
	dh.dice_error(possible_dice.size()>0,"Invalid dice: No possible results",rolling_rules)
	dh.dice_error(!rolling_rules.success.any(func(x):return x in rolling_rules.fail), "Invalid dice: Cannot count same result as both success and failure",rolling_rules)
	
	dh.dice_error(possible_dice.size()==0 or not possible_dice.all(func(x):return x in rolling_rules.explode),"Invalid dice: can't explode every result",rolling_rules)
	dh.dice_error(possible_dice.size()==0 or not possible_dice.all(func(x):return x in rolling_rules.compound),"Invalid dice: can't compound every result",rolling_rules)
	dh.dice_error(al.which_in_array(rolling_rules.explode,rolling_rules.compound).size()==0,"Invalid dice: Can't explode what you compound.",rolling_rules)
	dh.dice_error(rolling_rules.drop_dice<rolling_rules.dice_count,'Invalid dice: cannot drop all the dice you have',rolling_rules)
	rolling_rules['possible_dice'] = possible_dice
	
	dh.dice_error(not (rolling_rules.explode.size()>0 and rolling_rules.compound.size()>0), "Invalid dice: can't explode and compound with the same dice",rolling_rules)
	
	return rolling_rules

# rolling a single roll from a parsed rules
static func base_rule_roller(rolling_rules:Dictionary,rng:RandomNumberGenerator = RandomNumberGenerator.new())->Dictionary:
	var al = preload('array_logic.gd')
	var out:Dictionary = {'error': false,
	'msg': [],
	'dice': [],
	'drop': [],
	'result':0}
	
	if rolling_rules.error:
		out['error'] = true
		out['msg'] = rolling_rules.msg
		return out
	
	# setting the possible results with rerolls removed from possible results
	var possible_dice = rolling_rules.possible_dice
	
	# initial roll
	var dice = al.sample(possible_dice,rolling_rules.dice_count,rng)

	
	# reroll once
	var to_reroll = al.which_in_array(dice,rolling_rules.reroll_once)

	for i in to_reroll:
		dice[i] = al.sample(possible_dice,1,rng)[0]
	
	
	if rolling_rules.explode.size()>0:
		var exploded_dice = []
		for d in dice:
			var x = d
			exploded_dice.append(d)
			while x in rolling_rules.explode:
				x = al.sample(possible_dice,1,rng)[0]
				# if new roll is in the reroll once list, reroll
				if x in rolling_rules.reroll_once:
					x = al.sample(possible_dice,1,rng)[0]
				exploded_dice.append(x)
		dice = exploded_dice
	
	if rolling_rules.compound.size()>0:
		var compounded_dice = []
		for d in dice:
			var com_result = d
			var x = d
			while x in rolling_rules.compound:
				x = al.sample(possible_dice,1,rng)[0]
				if x in rolling_rules.reroll_once:
					x = al.sample(possible_dice,1,rng)[0]
				com_result += x
			compounded_dice.append(com_result)
		dice = compounded_dice
	
	if rolling_rules.sort:
		dice.sort()
	
	if rolling_rules.drop_dice>0:
		var ordered_dice = dice.duplicate()
		ordered_dice.sort()
		var drop = []
		if !rolling_rules.drop_lowest:
			ordered_dice.reverse()
		for i in range(0,rolling_rules.drop_dice):
			drop.append(ordered_dice[i])
		var new_dice = []
		var drop_copy = drop.duplicate()
		for x in dice:
			if not x in drop_copy:
				new_dice.append(x)
			else:
				drop_copy.remove_at(drop_copy.find(x))
		dice = new_dice
		out['drop'] = drop
		
	if rolling_rules.drop_keep_specific.size()>0 and rolling_rules.drop_specific:
		out['drop'].append(dice.filter(func(x):return x in rolling_rules.drop_keep_specific))
		dice = dice.filter(func(x):return not x in rolling_rules.drop_keep_specific)
	elif rolling_rules.drop_keep_specific.size()>0 and not rolling_rules.drop_specific:
		out['drop'].append(dice.filter(func(x):return not x in rolling_rules.drop_keep_specific))
		dice = dice.filter(func(x):return x in rolling_rules.drop_keep_specific)
	
	out['dice'] = dice
	
	if rolling_rules.success.size()>0 or rolling_rules.fail.size()>0:
		var success = dice.filter(func(x):return x in rolling_rules.success)
		var fail = dice.filter(func(x):return x in rolling_rules.fail)
		out['result'] = success.size() - fail.size()
	else:
		out['result'] = al.sum(dice)
	
	
	
	
	return out


# calucate probabilities of a single roll
static func base_calc_rule_probs(rules:Dictionary,explode_depth:int = 3)->Dictionary:
	var al = preload('array_logic.gd')
	var dh = preload('dice_helpers.gd')
	
	if rules.error:
		var probs = {0.0:1.0}
		return probs
	
	
	var base_prob = 1.0/rules.possible_dice.size()
	
	# base probabilities
	var probs:Dictionary
	for x in rules.possible_dice:
		probs[x] = base_prob
		
	
	# reroll once adjustment
	var reroll_prob = pow(base_prob, 2.0)
	var prob_to_add = 0
	for x in rules.reroll_once:
		probs[x] = 0
		prob_to_add += reroll_prob
	
	for x in probs.keys():
		probs[x] += prob_to_add
	
	
	# transform keys into arrays for further processing
	var new_probs: Dictionary
	for x in probs.keys():
		new_probs[[x]] = probs[x] 
	probs = new_probs
	
	
	if rules.explode.size()>0:
		probs = dh.blow_up(probs,rules.explode, explode_depth)
	
	if rules.compound.size()>0:
		probs = dh.blow_up(probs,rules.compound, explode_depth)
		probs = dh.collapse_probs(probs,true)
		pass
	
	
	# rolling multiple dice
	var original_probs = probs.duplicate()
	for i in range(rules.dice_count-1):
		probs = dh.merge_probs_keep_dice(probs,original_probs)
		pass
	
	# drop dice
	if rules.drop_dice>0:
		var post_drop:Dictionary
		if rules.drop_lowest:
			for k in probs.keys():
				var new_key = k.slice(rules.drop_dice,k.size())
				dh.add_to_dict(post_drop,new_key,probs[k])
		else:
			for k in probs.keys():
				var new_key = k.slice(0,k.size()-rules.drop_dice)
				dh.add_to_dict(post_drop,new_key,probs[k])
		probs = post_drop
	
	if rules.drop_keep_specific.size()>0 and rules.drop_specific:
		var post_drop_specific:Dictionary
		for k in probs.keys():
			var new_key = k.filter(func(x):return not x in rules.drop_keep_specific)
			dh.add_to_dict(post_drop_specific,new_key,probs[k])
		probs = post_drop_specific
	elif  rules.drop_keep_specific.size()>0 and not rules.drop_specific:
		var post_drop_specific:Dictionary
		for k in probs.keys():
			var new_key = k.filter(func(x):return x in rules.drop_keep_specific)
			dh.add_to_dict(post_drop_specific,new_key,probs[k])
		probs = post_drop_specific
	
	if rules.success.size()>0 or rules.fail.size()>0:
		var post_success:Dictionary
		for k in probs.keys():
			var success = k.filter(func(x):return x in rules.success)
			var fail = k.filter(func(x):return x in rules.fail)
			var new_key:Array
			new_key.append(success.size() - fail.size())
			dh.add_to_dict(post_success,new_key,probs[k])
		probs = post_success
	
	
	# collapse results into single sums
	probs = dh.collapse_probs(probs, false)
	
	return probs
               extends GDScript


static func str_extract(string:String,pattern:String,regex:RegEx = RegEx.new()):
	regex.compile(pattern)
	return str_extract_rg(string,regex)


static func str_extract_rg(string:String,regex:RegEx):
	var result:RegExMatch = regex.search(string)
	if result == null:
		return null
	else:
		return  result.get_string()

static func str_extract_all(string:String,pattern:String,regex:RegEx = RegEx.new())-> PackedStringArray:
	regex.compile(pattern)
	return str_extract_all_rg(string,regex)


static func str_extract_all_rg(string:String,regex:RegEx) -> PackedStringArray:
	var out:PackedStringArray
	for x in regex.search_all(string):
		out.append(x.get_string())
	return(out)


static func str_detect(string:String, pattern:String,regex:RegEx = RegEx.new()) -> bool:
	regex.compile(pattern)
	return str_detect_rg(string,regex)


static func str_detect_rg(string:String, regex:RegEx)-> bool:
	var out:bool
	var result:RegExMatch = regex.search(string)
	return result != null


static func str_split(string:String, pattern:String,regex:RegEx = RegEx.new())-> PackedStringArray:
	regex.compile(pattern) # Negated whitespace character class.
	return str_split_rg(string,regex)

static func str_split_rg(string:String, regex:RegEx) -> PackedStringArray:
	var out:PackedStringArray = []
	var start = 0
	var end = 0
	var next = 0
	for result in regex.search_all(string):
		end = result.get_start()
		next = result.get_end()
		out.append(string.substr(start,end-start))
		start = next
	out.append(string.substr(start,-1))
	
	return out


# vectorized over an array of strings to return indexes of matching
static func strs_detect(strings:Array,pattern:String,regex:RegEx = RegEx.new()) -> PackedInt64Array:
	regex.compile(pattern)
	return strs_detect_rg(strings,regex)

static func strs_detect_rg(strings:Array,regex:RegEx) -> PackedInt64Array:
	var out:PackedInt64Array
	for i in range(strings.size()):
		if str_detect_rg(strings[i],regex):
			out.append(i)
	
	return out
  GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��,�$����� ��I�ض=S�m�>���7Q��*�]��ņ�ǖbÈ1(,�b5c�b�BQ�b�(��9�;��������KD�' ��VC}ˑ��'�E�)�W�
'kY#�t�˪�\�I�[6��֮�N4��ʞ���1����XmDt�s�K�Ʋ��jJr�7j������F�`�qcűǨH;?"z�m��|`R1�GD�mM$��U/J���sRo�FF�ϫ1������F����J�=��e�h�M��舲h��F¬CGI�XD��vx6|��#n����-lܠI̽g���}<�fܐ��OMW�A�����V#�'�뇈��e�[�d�z�u��z#*��T� u�*��+u�o���z榳u��|�vNF��O�2e���_j#z�����E�ݯ���?�ǿ���d0 ����σ�v�p�7R�|���A.�K�X�&�u+	`"�˥�WkU=��!k�.]}-��፫W�����2��om�]W�^��܃;�S��֌@j�o���*�����S̰�-�> ����@.џ�-���P9���c��m�'����to �ߞy�NE�*H?j#i�$��滚�Nx�Ԝj�������)|��U=��n�&f�/'����� ��&#ʈʖ��H����O1����h��ݻgA0v;¨k>�3`�=W&g< �-;�p�2k�K����o���M��VQu��UD�'�3{Ǧ!* r�{�ӽ�.v`��s��R(�+VV�֚·�?q���x+��H�'ӣ����(�D�,����_���ƞ �i!��A
���w*G@��"Uqڅ�ӫt�Yl_;!�w.FK�Ѱ�J0!YE�Zo��f}�t�ć�^��6-���x#�?��덨:~��ז\D��=�Ċ'�����蝺8'=�H)���uoC �\�XI���ͩ�;�K���QǰEŤ�zD�l�@'����Ri�Z5L���=_L��WDt�X���8N�:KbW���}p�~ʹ�'O��+�:^̝�9y�����_����E��~m�mҲſw����,��388�:.u��`��G���]�s�C��/~KwGGG333#]�Lnff��������˿��۴����0r��?�^�z_��)�mm�I|�p���s#F������f8�""�}QLL̶�N�<����ץ$|��G��
��.x�����'���Ĭ���v�����ZS����醴�t>JWZ�ӯ�iM8��(�/7��o�U�. �r������U՟}t�[���  Lt$@@�@�JZ4�,� (F�q��zU�헠G���N�M�|��x��էN:d9K��7�h}����b_ p�_[_��K�"e�{�"���$ \�>g��3.��ꥪ������E%*1����f�#�s��k�) c߃��g�Nm��	�4��޵�ɭ��o�Ks��ۿ��� }�N��S��m;7EX~�n�.E����5�RS��?��,&�7�� 4�^-Z�x�#��%���5B΄�_��-,������Z"(g{  i�*Ѫ{K���t`>J%d�B�lN}�,�V�\W+Lyc �~z��2�' 8��/��R� vԕ%���& ���g�͹%΃���l���A�� ��%��A`�l�!��d�4�һ�th�*S �CS����k!����e^0 8y,��9������ ��p����Ѯ L�$:��iK�ԋZ ��Uo�������L������"�v]�X>��M L�m�ѷ���k�%��I�?��r�5[�\��}���� 0(�����vq�DT����|nY@T��n��� h��TPr��z�LK�J�w�ZMs~��V%�r:�]�^[�0 K�5D5cl��/�� �L����9 �]�-@֥H�9	$
;W׋�*,(��gñ[-�� d�O������$�KXE�t�\���@�IW���c�������0	�� n^��U7���г\�����b"u� q�N��㲵, ���3�����´�߅RA� H��I���J �+
�m�6 �_�"��8)��9��j)c�B�3�
�!� ��rc ͞��e �>�TuZ�D�h����~[GD�M��o*�����e�  qJաW�Ĳ�p������ș��5"�.q��W�!5[~�t ,B�Q�~g؄�*��@˥�t�8�)��f��d�E"��b"B���u9L�g�� 3������iT
`�@�魐�v ��n�.�1�*�O��.�\ "�d%���l 0ے)�H	 �?sIk����D�����Jͫ�I A�Kw�: ����M���{����f,/��G����ڔ�� �3��670��W�R=�t� ��y�-��䂊:@������;�E]��a��	Z��6+L�턟��s�EE����j1���x����wKf���6� �fk!����R�ѓ���<�-��j]f�m�pN�Ѩ�K!o��XIx}e�o ��-�3-�������)D����7�X�١ ,��C�>u�� �[�|�gp,~\_UO�Q����r���M�ӹ0{��_TD�!P?�_��e��Q� &�����#޿���9I��5� إh��>�09�Hsl�<�cĆp��P׈���%Z�~���m�>UYa �2�a�-cl��d�p�l�5F�p �Jzb�n�����������e��Hݶj�}?��2��D)����QpcKD�O��c�j��-+ �u��t��| ��V�A4�b�{h:��*3?�#��N�'�T{ ������H��7�1�Tj���.�x-�kf�.��k
���R-���_��� ���ЛqV:!�J��R�Uj���R��4���<��z�-�3�@�B-����O"�Qk�)t6��^�s �=����ʌi `���n���K-�¶��=���'$,,&��*��g��^�̭Ǯ<��k�D���vj���@0 �ͯ��؎ d��ѕHh����\	��.!�?��=��*����k(z�Kt6*��BG��:1D�֙u�U<
  �/���p V͚��p?��(�&�Y8������*wql��%� pH,$
�([�+Ͽs���O�x�Y2C2��i�5��ϟ�Z	���a&g����q�y<&"�A�&���9��Q,Е�3]��`���x	�R ��Q�=`<�?��ǿy��JD� &���~z�0�p��^D�@ػj�J�`\�|<YW��#��]���;�=�=[v]Q�;�|Qu ���n
�4�u	�h"��.2 �v䋕����wg�?�Q���nE+����pc�?�D9��˛j��D;�m7����� u�-Vv  L|�1��0����nESgp�8!��r �&�'��$;��,$D�+�Sx�[m�w���Гb�3���S[�#�:A���w�H�ܝm���ľ��q~��@�X�З��p �������XG��*����m͢oY�۸�f�d:�4 ��RuZ �K9�>]�`cW_��YX���c �
Ubăm��R�@bo-�-������3��J�9g �T����25���1�ŋ[+���խ�t�:����w�;��z{;����D��)��$����G p\��DA�W��7���o넕o�H�D�������Qr�[DM��v�>	  򫂪} VK�	�M��@��T?D�Ͽr�ݞ��k�O@t��n��.��l��#*����#���U"��d�8��	��430�L�R���F��ą�����c>lM�m����#*�t7<�}��Z��B������[���� L=פ'���'>��*�ܝ6"IP ���1�:����/����Hκ �~�h��1 �uS���M�H���ڊf ����">�c1Uo�{C��.��^&�˝�{UܬE.�D%��Q����mDա�F�&c�-�������Z��wy �M��&��L�ζ ����� 0�H����& �W�#�W7��ӕ��!�ws���!*��,����-v�۞��琇���~�B*_u`l���u���ܗj-K�	���+D�������_Fi�̈[U|��Y�"�y1m t�_N|�����3DtM��C5�z��*�$) �'�������UDQ�����������҇] �>��T{ ����M�50<555��Z�Ƌh-c�#����4��Mק�;eee�]�PM�( F�����6cB�kE0���HD�1� ���V ��(ŀ�J�� �X����B�ب��t�2�Ե���
	�~	J�{b����g?ռ���]�)&�O�� @��j-e 6��q�Z�JO��0n;���,�_>�yEA��+Ğ�;܅�w���?�h�k��� ��9��ԭ���j���Z�a4�y  1�#��Y
�C�ʯ�,---m�Α��{����ZF]>���^%���W�Z 0�ɨ+g1�	yr�hQ�=ONNN�u�X���C�ng��1� <g�׫�GmF���`��td�='�x� �|�� ���=no�Ӷ2 ?g}�� �2ćm`�"�~Ђ�I��~�G?>��YK�' V���3g�T�?V���\��<-ӏ��{G���^j ���:�O�]�/ �-�M� 0!�+�D	�Q��_�2T݃�}9�����{0��z6����u����g���  ��ϒ!�' ɩ��ID�Q]���9t�А��`����h�~Ͼ*2���C�����h穆&m����*2T+?jLu��Aʽ�iQg��n��6������鉲���3��"���P6�6��3|/��)ё5%�s|�Ht��N�nx���̼�`b�l���hl��������e���ˠ�sY{����|������黸���2ݠ��5>�=�<�\��Vm�~(�U��ͭ��Oɀ*��r�<Ilaډ�-<����CwkI�z�/��/���m ��
9xg^N�k�H��iT[8���	)�6�r5¢��$:X�]{[��]� ��c ��u�|_E��&E�0ʼ�-���m��-`���w�[�Їy� `�"M$U���]y�*._^X[��B @b<�?�|��GȲ"J���kq<���.�����)cj3fX���Z��)a�_�R�:tL����Zsk�|=�V�{�8���ˈ��9�����]S��
S�#����D	�4�Z��~>V|�X۸x�������ݞ2��%\�a{���������N��7-�p�؂o3 p�ᩀ#K�,��Oض#����b`�G~5G��۾�DD�����dRI��F0����(���C�눈^-���]���xh`�}͙{Gl�a��_��;;F�v'��ّ�,�U�iG<`�6�I]=���2F]3ʔ�x�.�.��S)��55J�&����W2��GZ�W� �@�eg�*mc�{Q�LxLy��~bbbb�� �a�ٟ�j��fw9����[D�`��MdsF�w�!����5�ew�(w_�3)���yp����d,O���d>�����.���9��1�׌���ϒ�஻>�-�S]kz<�U�!�+׈�8Ban��i ��R[U� �9��S�|��4���.��X� �\���]��-�h,ြ��j���|�� v}^i{�Նiyq�_��Y�-[[ �RC���p�}Mtq�G.8�~^.Qƿ���J�py���$S 0���m����?�9�]��8чqM�fF �b�+�H��Իϋ��<�O&��z�Ƚ~Qg��xz����VF]6��ߊ���I=��u��/G�<�{�9̇���ZQ3o�ϳ�گS�E9����V���9w]�&*�-����ҙ��v �:��=���;f�'�7�~@D/#g�a !�
�Y��7�L���Q��ދ�N�^VB�٧��@��*Qj�"��
Q ���J-����\or����R �����i""e�p�F��fw�"*�����g�D7~�0�����R�(%�^��))��J �VkRR��'=��gBb繗�ֶ�6m0 �)�(���M�?� ������f�3�2Y 2�ؽѣO^>�m�ͼ�8|�[+s �X(�����|������.���.�����722������)�ү�ʲ���h����p,v��ؐ��`�3X�U��LwDCm����3� �����%}]Sc�cJ��㿽MАw���Llb��2�Z<M��`��i�ϧmѰ[��|�s�?�Q�]�=nɱ���i�d�1���� OT�T�tVs h�����nh����1b�<*�m�	 �����4%2������e�]q~���yG������LZl��h�7 `�id�1�C�*�B��p+��F��O�j�����P����!�f\��n�ɓ2k�|�-Ec٪w���Nh<�F�`>�j�F��{Dow���=H�ނF�c�I��/�޺1f�   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dy710en7e71ws"
path="res://.godot/imported/index.apple-touch-icon.png-b21a756d869f84af832970a74d8371bc.ctex"
metadata={
"vram_texture": false
}
              GST2   �   �      ����               � �        |  RIFFt  WEBPVP8Lh  /��I�#IR��� YY�{�!��m1u>��H��8 ���Aqp���q 
��� ���'��LR!�%u�/r�L>?G�@�-~tB�!.d�>:'��w2>O�ҷYt�<?L�H_e��t��̟㩞<`�����Z�OP��h:���C�
�$� K�G��
B����d���@���S'�j���I=8�y��B~ �4�PI�yh⢳���Nz����$�s"�+|4�{���L��"����I�ɪo��kt��p�a�Z��l���p8H��#���d�����Fs��������>���]��C��;�0]e� ���*6_dI
��� \C�}���3H�&�3��q�8�6�',3�W�+fv������k�E�0B�`dH ��V���3 �Di���N ��H��6t z�6��-Lh�3S_I�J 3JmI-� ��$;иW ����:((%�q&z�0���v>��%��A;���%t0(L I���
��$ɲ �sB�zb���@Ge��:jh< I�;t����R�J >���L���`��ƣ�~&&������d�E#Q{ l�42�=� ��ܸ��I=D%��� �p�W��yB�r
�&y��[�Jg,3èl ����$��p��D��P�T���+߇T��Y�WAk��3�xJ�������9$H~�_ I
�)�
� ��$.�$HR8X�ρ���$Sc8  dE���+�P�6�P�0��b��O��9< V S<\�-4ІPpB�>�@�ȯ�� p���w���A�G\��]hGjJ�f v@B.z���{���E�kgT
�JH7 �LX���Pk Ll����!!���{h��[F
 ���1!\+��< ��2zB)��ИB�֐d�kCcL��k4�0v�$K�y�+ 5y�� uH�O��4�ĝB �za���*���xt��Oe���W�}�[�a	U �;��[x�ӆ�ԋ(���/�^�[�>�����w�[�P�q����[]�{��M�
_���$nrh�����P��Ms�3o �*-�/�
�`����:B�T�$q�E�	Bn�:�#J� �����)d&���0��4�JW��+%�2ho#�&6��Ro�B]�J�;)�$|��ˆ$d.,G�:_R�I���W��$���1� )���,I�������O �%�ݙq.�;�dG�ȗ��� $�[��B��N�$�`%z%�&$�󩾒'>A5v�T��&�	�`7%M��əvȂ[p�R��h�d	NY
I&>�E2gl��˧K'��כUXv���@�)~�cA��[}G��	���wW���K�z���B            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c11btalxgo12t"
path="res://.godot/imported/index.icon.png-b92c9a802ad4b78e247784454a6b506f.ctex"
metadata={
"vram_texture": false
}
          GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://brgwjwxiixxna"
path="res://.godot/imported/index.png-0c78d14d192abe5f22f8c25928ca1ab8.ctex"
metadata={
"vram_texture": false
}
               @tool
extends HBoxContainer

@export var value = 0.0
@export var label = "Label"
@export var bar_color = Color.BLACK
@export var label_color = Color.BLACK
@export var label2 = ""
@export var label2_color = Color.BLACK

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	if Engine.is_editor_hint():
		set_value(value)
		set_label(label)
		set_bar_color(bar_color)
		set_label_color(label_color)
		set_label2_color(label2_color)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func set_value(x):
	$Bar.value = x
	value = $Bar.value

func set_label(x):
	get_node("Label").text = str(x)

func set_bar_color(x):
	$Bar.modulate = x

func set_label_color(x):
	$Label.modulate = x

func set_label2(x):
	get_node("Label2").text = str(x)

func set_label2_color(x):
	$Label2.modulate = x
     RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script !   res://utils/BarGraph/BarGraph.gd ��������
   Texture2D    res://utils/BarGraph/white.png �vc�C��I      local://PackedScene_iwlkq Q         PackedScene          	         names "      	   BarGraph    anchor_right    anchor_bottom    offset_right    offset_bottom    size_flags_stretch_ratio    script    value    HBoxContainer    Label 	   modulate    layout_mode    size_flags_horizontal    size_flags_vertical    text    Label2    Bar 
   max_value    step    nine_patch_stretch    texture_progress    TextureProgressBar    	   variants            �?    @�    @	�      ?          )   �G�z�?                 �?                  Label            0A)   ����MbP?)   �G�z�?                     node_count             nodes     R   ��������       ����                                                           	   	   ����   
                                 	               	      ����   
                     
                     ����
   
                                                                       conn_count              conns               node_paths              editable_instances              version             RSRC        GST2            ����                        &   RIFF   WEBPVP8L   /� ���������    [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ch43vn408cjit"
path="res://.godot/imported/white.png-4ef1bbba8a0c1547193e0498e005f4f6.ctex"
metadata={
"vram_texture": false
}
               RSCC      3�   �
  .
  �
  @  n
  e  �
  �	  D	  �	    �	  N
  �
  6  �
  �	  �	  F	  5   
  q
  �	  �  m  �  �  �  *  �  	  .
  �
  �  X  �  7	  �  �  �  i  (�/�` MX ��<$Q ҲJ �Dq�f��T��
  �*��wӭ�L���tE�B#4���AwT7��E�\AlC����V��d	![�"\K@�����>�7p�[�H���}1V�40v$�a١@�8\a��K����l����Jf��B�Tj�#)!<~)����Ϥ�@j"B��>i�1�;m��q��,q?�LP,�X����|�:P���*���ˇ`
 =|Xu���5�k�L7������U@�DÙL�a!�R��T�Cڗ�g��#�"X�wY4.]"R�%6[։>�)���c��Lv]�l
���a�d�~\&���v����ɮ�;��E�;l�rg��Y$.�ɡ�-.[$�����g���R�.Ś��%t�J�HW��ϻKL���2�Dw�dT[��E�����D��M�6�%<�M��0I�h��]Rd~!ۥЋ�<�n�K��m�Y$
�.��]$��F��2Yl�I����]bC6�e��&��5*i2�5��/d���m��l���l���Q�6ۥ�t����6["�Ȱ�2[�������.�2�ɦ���F�;\�%�������G��9��d��?�����^�l�P T�N��--�|C��n(m��%���zC��P�/���1���	����O��3���:x��n�gл�j�܃ylo
wcc�p./��̂�2"+:G���ԉ�,s�eV4.�s�5P,l���y��"�4Xk��`�z����\��A��P�o(
���|9�kQ���;ݻ��O���O�ٻ�x�)�p��m2��e#���V�Ǯ6���R��Q����G��U���%P�n�D��&-�M�V�n>����>O��f���,���TK�K�y��z�P���B��0@H��$�ZK�
KK��T'Ṡ�RKI��nh��P_?9�������e����֢a��<���<}�����
�Ϊ�X��5)���E���MO�섌����U��r�1�����Nd��Ț�^��������n�ޓӜ�� �sN�����)��9ujѰ�עQ�a��,��B��糣�&�'^����l�N@$ (ݥ2k�'�X�d&�]�BP�
�?��)���P4�X{lQ�����Id�~�"�\�.Lc�#���Ƹ/�?o�W�3�yl���,hU��@�e�glY��0���*��-Uj�"�S����A�X�1P�L���Ly��p@&Zκ�i�T�4ǂ�� [�T����M\�Ш�^9mbg�<S��	�,i�����(�ñ���p4���}��䩸	S6�G��4,r���v����>t����;�У_<�x4���!do��JsN�@�2��A [(�q��T:�q@�-�5�C�VD���`�	���У|݀AGGZ¬�� ���f�B)�H�͘zD�5���h���R0���MH�fO�n?F8���Ym;���~`���
	A=	9�w��W��ڤQfu�<�)�&j`aU�@0��1\]#F��=`��ACVՌ��0R���Ai�r��������2X��)�
������aC�CM	V��)s�J!Q3�C�$�����P;�oh��=9A�k� �U�e[���D��o0[{��wE�`��_���ɾ��S��
:�\ƥ�t���jD�����$�N�ڼ��A���Y��\I�ZhB7���e�����Ǔ��2��f��B2�pA"k� C:10&ĩ:x�Ybmuem!��-xľ�0鵝X@�J���Z�(:0�+�)Ar��}>���$_���R��~rJ�W�神���F�W��+7VO�	�.sr�F��	�}��������f��	5�<!��
����Mg�F�F��>���.�q2'
RJ���b$O�Y�3�%=d��qX�VW���`����t@�ؿ��6���~C�^�`{�ݜ[Wq6*V��c�Ȑ�h+����=4J駢ى�l�^�y�J�ٝj�Ǽ?�$8��c6s�(��������JM�j�7񐜋9Ң�WqH'F��i2tϝ$���M)�C­74'���ON�������
꼺�mg���0s�(Ñ!�}DON���|��-Q��!BpX!buE��*�''4Ȇ:}��v��(c�=�g � �~�n���qG_'w��4�}�0�dI=���n&�.��0�тL�������t��'��Π�b=1���Hck���&�z�;{�e��t4�QZ���A�.:,O���I������Z�~1���5��ult���&�L(J˩DJh���ɩ��yU<��� S
�I�<p�*� �-Ie3���3G�\aH��� �!}JC�(��&�fZ��dF*��
�!dM�DB�8���t;��;*#��F�s�+6=�[�ܮ���1u��3*��>�NYa��U�'�vK���F���g�t��=(DT�g���AN"t���9��bH���s�����{�5���R��P�D�=�Tp �@������M&썈��Ee:�����/F>��%����
��
^_����Ys�*����]����Τ\&=��q��q��#7	]i�(��;�4�4��.���*���\��%��E��-{�>���i!ce��
<��2F+�7�D��#�Ŏ�D�B�R�!�gx����*N���S>��U�`2�3" �#��.�a| t��?�y��.xv L.��k
���6�q�؟��z"�I-=���g�pZM@c��$~�[�����R���� |�{ 9�I�h�ę�>֣�Lc9(�/�` T ړ�!N �2�RϚ��V��Z=ܹd������a��ک4;M�����)%�����������S��݄����?vwo�R	�%X]����e�:�?3��x����à��#�B���V��Ԕ��^i�^cz�ee$�$�0e�Ɯ��u4�$*I�$Z,).2�h0��2�J{i��|����](�[qӽ��0~��TR�[���>j:�¸z�=�t�����*/3� uc��z,.�}�w0g�-�z3�-��QI�J�:Q�x��9[���J(�k�I����$�A!�j��j������ƽ���������|�q�-�xvC+XhI2���/-t�&��P���CMJ�lE�T��������
i��Ȍ�gF�EUu;^P8�m6����ҔVk����ܠ _o�emC��d�ן!���W�y56��u�i��ޟ�q�/��[d��<�u:��K����*�e���Bl+�r�ӷ�4z#9FʯLSe�w�e]vW��#^jYY�#ez}�Lu΍��?��륖=c�f'�{�"�Pƽ1��k��?��5r�=�;!d� f��AE+Ͱ	����ȟ^�4Ҧ�%�i$�^{�zRu	^{4��qo�N�5�R��p�s��Я�pR�����#H�j6
v4@$KԸ�z`�$���,[_�R�eH�}�z�0ң�ך-򛝋<X��C��_USUMi5WMu��03�׫���
�?nƯk���f.�{�!����w���g9��]�^���Le�JL�f2��g�P�D3�{��yš�U���90�$S��'����F��U�#��3a���_���l��l#��ќ!Y#�}���zo�Ȭ�L4�����bb��z�����Y,[Gr"'�e/�r��@�S��e����u�9����_.]�+(/���
�c�ٷ�?G�	[*̝Ma\��=
�)'A�8��D�|�Ǎ�~,8$d�3�W�j
�ßiD����[;
�n��� �Ƃ�zmk�eۘ��qo����f���G\�5�B��;˧�� PH�H EnRe<BUeć�Q������Q���M�>��gQK��@�I9¤	c�Ë�K];M�4\[��dr]B�r׀��g�| k�g��j��sY��cf�k.s�>�*N�5��-x���~Mq�G�;�
9�e���P!��
~RLЛ���l_�Y0N"Ͻ�X亩�W��W�̄q�)�q�lȻ�<'��)H��eQLr�7���)8�f��J��5XO��b+q�������	Mڏ��*;�RP8��쫵��e��Wx�POW��Kl�7*7�T�������������ˍ�јoa���{{��E��ի�*T��Qp"���k�ӽ����\~ �zm����(���mO��6�;J2��k����ı|�R�������%�����+F��	�-��n&�i_�/<� +䎦l�Y����M>�P&9���.�$�c��K�L�� H �끀�'y��<^`y*f�1Y�{�8xNb ��7~��Y���l!6�b�A����U�4�Ā�h�SU�ؤAߞ?�Q�e��]�ވß�Yͧ�������8l�D$�n���z�+�~	�H�?�6c�ː���ke����_p��q��Y�b�0F�N�J�j�Y�q�zj��hz=�X���](4��)�Q�$f���d�^[����h��|�C�ѪDy�"�y�?F�	'����&Zb��V���d�e�~�A9�������Խ�;J$9%��#_�p�5��&E��=0Qj�ȶAG��i9��ꟼxd��}������>s�Mi`�T�+�،�&5j��Bh��Uh�#E��d�+4��Ҕƺ߲i���5
�	�@�\���Q�w?��݁+5J��IV�Y����ޡ���zo�}b>0��i`�F�GG9�8s���yq��D^5��dp䰭��<*@�B�b���2������f�n����BWH<����nw�G9���Yn��>����3s.,�u|s�,�`�;ӹ���y�Q�e����ܔ�(���N?�#6�V������7v�X��\�C0{���`_�\D���Kj�3�,̚���k��ژe<d5��,=eP@��i��9��������R���	DD�$m`�);@�B����{�ǚd�"����?9yV�� 1�(i7@b�QvDVԵ��h�����vX=�Z��υ��u��{���#BtҌ\a9�O��d^f���䞧�'�_ƭ�6t�����dG!YFc����O��y��)�d.hȼl����E��N}>�[������&�ב�9� ��sc=�PJ/�}k�,�#�4Ņ����a b����L������a���!�WVhz�t�[
�ٔ^�w1��LC���B	r0Q�[y�^Y��>�k�x�0G�"�e�����>�(y#��P$�#*��4�ɥܱ#��G�EY3�r�:.�v����D:t8W�7�i4�6:	�ϯ�̆���Z-����\�;� jʢQ��У�}痥v�ŉ�#|��*����d�|ܿy��� A:Ju���b���!]u�D,0巙������t���7�z��P��`=8F�Uv�ꯕX��t�uU�!��+��eAl��
ɢsH(�/�` %Q ���M Z�* xrf���Z�HO9� �vs�����b>�	>��j��5	�x7D������YC�C��;��g��^vo->m�D����$�,鬗��3�=��т�Ј�!�S�$S��rb"j=%F(��R�x^��j�+S#|���]ev���#Tl�'"pHE�V�[3��T�ku� �O�5����h��z��"���ܔz�)�*��䠽K|�dF.kx��QMJ��D�/���@e��ڰV�'%@��{�>৤���p�N����Wm_��-�Xo����^gS榬L+9vSg7e�M�# =��q��z|�3G�1F��V(��X��r��;������<���(j��'�xBe�H��P[I�V�O�F�8�h�v��r+)T�J�~�w�5]��5M�ds�)�2ݔ5oh���^ �s�Ɍ;ƭ���1��@��F0����P�8k7�b������fa�p���N�k�C���Q��6����=^�5E��Fꅪ���]6�b�]2�����d�#�)+j�#��i��h��{#p�a��4�]��k��\�Xse|Ll#���h�P1�`t"�V�ڪc��F�E��Ew�A�� D��6�\�����f������*���]����#�fr��SSD�~�z�Z�Tk=隯�f'�l�s���>�wg��b�5]�U�)C�*����Ĩ�Ⱦr%VO��;W�5s�٬=�K�B��_�TpdYki5�{� &����mj�~��T�r�]������z̒݃����o�G�b�8� ��Y����Ka�O����.�c�Sa+����� a�oB\z���6���ü�^��`'wH�\�)[�>��^9N=ma!��^~��Bǋ�T;+�j��:�̛���WEQ}��z��,�G6�G<�z�"�Ww=��#3y!_�2{�C�����=^��G7eGW�N��{��f��O�R`댈��nv=����QZ��b�
7;��ک�;ϩ���%���)�3�	��zf���GLf����%�U��>��V�/����s�k����>�L�3�Ba������ui�v��F���|H�XC �����C|'N'���B!��
@"�p�>�'�x⩳sߔE�5>r��$¸!�W��^.q��,�=���� �"��q'ό} �~��Ilx:���W��A��XҤD�$Xkc6�h��5v������$Dz���l:w���==�bu�g��KDgn�΀~n����8"�Ї��p!
6^F9;�~��I'U��]ö/Xi.49]�1��D��-c��Xe ѐ�v�B'm�,w����:�_dl��)���i��@�]���I��5l�� �74�+2sF�E�N-$��HF�D/,��������i�,� T�D���@�
ZC-|����в̭-pHȆ��6���Vr�S{<��0}����`�w�8������i�1�sS�p �Ɍ5l��;���kg�X��{<�ǳ��:�5���e_��l���w5j�F1�����J���RH'}~���oA��>z _��Lb;���l#o{�������>Gs'-��M�J��S�Y&��:En(����5�f��O<�!߭��V=沨v��.��5N|���1g3�H{�{R��II=z�G^�aI��"W��[m-�ˑ�O%I���L�صY���U�y\t6����í���`$a�v�����.:�����<'-�z��z�p����\���������,�;��H�< h���=(�h�>���Βx?GCqJ�G��(����'X�P�JnR ?��5�uD�-έd{#ڑ�}�k�=������'��l�fP�]�;�u������#,[UEt�5��UKD4h����"8�Ŗ-c����r�������׮����t���ײ�GQ���|�8�6�
��09�{AJl���((p5�m���.�	z4	��gT�U�+ �O¡Ul�p��� �t�Z�9�$q7�F�������$c��$ip��� 5Rو$���g��D�qR0<SyO�ٱ���װ,��Ŋ?HKc��)��W��p.ɠ�d
��w��@t��&���ce	P-dv��7!l}�[w�pe�+ǖ<ڡi�c���O�a��ߓ�%VE�U���XP,�mY�ѥ��F��y���(6 5� ������:D[��d���;���z������yZ���K#���Am��Z���\"�-�)�k����a?KT��$���S�P������R�5e��?��W��kH<H�,R����2�c�rIZ�c��h��\@k<> z�
��:��9��r\kJ��(��@��U˂�6_�`oj!O��(�\n~���T�{S�H<SӐ�`9ꚣޭm]S�_���r0ۖU�;]�{�#�i����e�=�v0Z Y-�D�F=��Nx̀i�@�3�mξ��1��3-�8���$9U]-��-���iΟ�.�g�?�n�?�#-,#뼥�TA���7rfb�U;":��Jsx< ylGÀ��H_�^ M r�Nw��`��.l�
(�/�` �V :��"P �2�Ʀ>�^%�!�=��:�P�p����>3��;Lc�q �M�b0F� �t�%;��g�X�H��|k?�/?m�D�
�0J[i6ښ�~kLđ�J�!��`���P���qtBsA� v	BK�lQx�'��l¥�(�0j+�-��t<�Xvw��^X6|���'������h ��� ��X����慄�޹$b��I�H��3S6ՠ7̩8�f
�^TU��ȅ�J���ֺ���������)Y?�y;0���e8V\�,��MgM�%�ۗmP���B^z"�86eӤ�/�r0z{k$�2�5i���n���r��/�!��P��v��SPa��-�ҏm'��`bs�+)oeiA�����y��ֳ3�{ ��B�t�A!OW�~�:U���H昀*������൵ixm�Q�h��H�^�AN�kh�3�ݝtyT���+�8���B�Dv����9lI��n0J�>������txm]G�kKz.��n�O�Ji�%���#���\t���*�:�oܤ��N�l�XI��Z0� :ۅw��8g� M��Msg���l���D���F�׊�u+�E�}FϷ��p����*��k�F�r���^!7��
�2�pk�73n�mo(�r�'r(ӂ�e[�sB~��9B����I3�c]�]v�"1K�����u� �NZ�]�ߡ��S��ȑ5���$|�1�=����e	���_Cf��EbPu�z>���c��6���"��}��c��'�͞�b��06{��ݗ����$�w�t��5�o5xmk=ܦ�wo�qt�A�ar?p����R�l�q㆏�V�
 Z�˱�#I_-��6��2.�7w�a�; i�����ײͶ���b:��>�{&`����N�a��N������Xan��54Yb����������d6euH_�ќ������f\Z�}8�NzH��)�=� Y�(�8�1�8�5�m�%�`�?��3����>���<�Է����AF�m�5�k���k��y��un���fg5��C��0	�	����PH�*�aX�TA�.�G�,��Ƭ�m"��ف�ǎ���M�S����c�߯�3u;����v&;tW$������"6�^4.|�=�FI�Y�gw3<E���;z��1�҅۳G����Q���C���ū$�J?\9���
]_�K�:���E0�{�pi
/6
�h��x{�5�^㉖m��"&��k�c�P�[��s(7��G���� B `褰S��?���Q=)Ʋ��C��ªB���̚�Ѱ�KXF?#��#�t��Uy���-↮��ow�&[$���+L����5�/Z{��^[�����$Ҷ�#�H@��@*�?T�VW\=����a�$=S�lN�c���4��z���k�A�9�:���`W��#�K�;e2��(SDN=� S�j�z �I �Hi)�F�I�z��%OzI�ŽF��
�.��?�h4�u�k���f��j��!BӜ�i��_0��ɐ�\ze��z;!o��xŤ����C�HTS\���T��q�������_��P�V�{fL>{̘���("�9�oy�|��>�C��j�9Q: �K8�8cj��\��2U__ZL�eKe����N��4M�H�Š���g
G��_M�*�2�X�
b���ZPL$�К�5�ZL$gy��J�<��vH�������*�`��E�p~��S��qҧ����pjJ��G�CJ�����萒#GՓߩm.�<��u�d�$� �΢�("mS7��xBB#R8lPi�#��$D��Fh� �2���6<�S�J;e:RzL-���wA�(e�>J��!`Zv[P�¾�}�� �5����T���<�
W��o���ȧuH-zH0j�b�(n�K�ђP�&��0���94���ȍM/j��dg�M��ϔ_t�}�D^C�g%�l���*)�昀.�/c�(""?/x>�
�<����b��!�Y
��5l&����d��>�:�3����2�B��	���k̽(Y�ơ=_c�{�%ܒ�i��m�7�<Kڽ&��%�6<�J����K�d	�'Y�h��͗�\0��381Ä�M���D�?W:0��,^p�r��H4ઠ�6lL`Ҧ���t��n�;բZL*�_1�D���Q�v��n<z��B)�O���s
��� I��c��z�1B�j��|Rakp~�!Q(��T<�"�w\+#Φ�<R��Y�X�߁�c+�R��-X�	��M�lX��m�[�c�}fxI�4&�U!����Ҋ�����X�̭������"�?����?R���6ͭS�|}��g�D���ՃGp	�F�<��c0����f	���>m���F�Ԩ@Vf���8xӣ��H$x�%��vb��,n�(��&�.nWYc���V�κ�d�����L%I�����Ө�ꁬ|(��L�y��?δ�e(MeK�$]������v@�d��[GɁ�{�X�2�-0DZ�.ﴭ���$�� .�Jlr�؊��rK�B���e��0O����؏RAWtf�N�()�.�e�0��:��$�q-����vѕg�����}������� 5��<Yӛ~oӢ�;e- {��t̍D����K1����R�H��!��͛��vz	md�lj���F���?oh�?�Ѷ�mP�d@�����%���/G(��U?TV���»�Al� �Ӏ�uz�P��c@(�/�` �Y Z�|$N +��{�bo���Ϙ#|M>9�^�0��!|rh0"rt<#[����)/_fL�����w����P���oRm�JK��)52�����1�sv���*�}Mz�����y;�����'\{��J�'���Yh�0�Sq5��A5�B�-'���%�!l!#5�+�ah�	s��0��gU����X��6ܭv��5�M�[�U)|z��N���ഗ-�:T�S��݊!��;u�sܝL�`w����Q��l+���I���e]Y*�_��^�Ʌ�|ϩ�y(��Mw7�o=���+����������Y?�I��[_��ݍ��O�s��>��h\��¬���LL�c�@��C+C)YI��`���U;`� 0��e�89d<A�͕-*Ri+�l(��F!���lh�%��^��|�v�۱�Umۍ����)�'�`e�Y9�vN����g�I���e]۶��ۗ*�������C��8����<� d
<�_��>�+ R��s������71����)-P�hi1����5G1T��X:�	ut|���������w�".�&����Jb!�#XVXc�!��N�X���K���5��-шL���IS��k�2��ho5[��Z��݄C#�X�<�06HUU6H�B�n�� �4}�,���	7r*���>�C\���P쓈�� ������kW^��rE/��dv���v�A��H���D9I�*��0	�QH�$�"b޻� ��7���o���(��/���������jJG������$s�w@����O����>t��Tuڐ�A���h7�Ks�S�-D��O�I�ZƋ�5�|O�]W~N�)p�ɀ�#���='X�$��BEI�)HT�Z+-�� �,����-n4��A��� 2ʏ��qX��R������õ,���v��GF�m'�c<p��?XK?���1D�ҟ���A���s�o*H�z�{8	��^����V�_|)�l ȓQ$ �ą��Q�+��C�kI�.-nXx	��=X���h�5�XKr�&y��[�ooJ��u=�eݤ�"X���B��G7��� OĒ犉���h3�x���`#�Q�A��"��� I[Q�Fzգ��}U������{�m��I.��B�'�ر�X�a��U�'����E���0)S�I�*����F�Y�k��8�,�g�b�����?����qq�����m�×������JA�R�U�����s�z#i�{#m�F1�5������e��DBr/r��C^�}�K}���&�j-F�ڀ)�iN�fF�d%Q�T�^�g�=O�4���g�nwut5_�5g�˺��y��3GꞫ��TU�~�H%e�0(�ԕW Dq}a���^�X`-}�	�ppH��2��T �@u�oB#��Ck4�G"ʫ�4R��\�\����^�v�7	Uӽ��s��/Sl����U���0W�Vb��+ຜ����y��9C�P5�O�LT�G�>���T��'�r�E�{����|CX��y�3�t?�aa�������K����0$L���(�$�șf
e�Ԝ���"��G���C)�2^v�ϖ�x4⊾���ýj���e�(������g��t�p���RȰX�]Yi�ﬠ�!S1]�u������eݳ(}X���TsW����5M�� ��"���$UC�,��ߏ)��t�n��Gw.��t�@?��<+��~ݫ"�^5�{Y7��}ɴմ�E
_9 ��)�P�R0i�+�p���-`���N��O�~X"�M��l�D�Q��o���<l|���GL���C�~O�$$�C*�)(\d	�!��O�'/,�'�!5Ŧ%b(�@1�$q��#y)����7��F�D&:<�3\��
������}m���z�X+#]�n��]`���	x����Y؝�����.�b�9C���>����0/@��p�.Ȁ=B ƁA  ��܎�˕�G&�8K��	�)�,S#���R� 35�P+J|����b6��Zb�w��z-�V�������V��'^$mU:eJ/�*�pj��W��q��P�������}��F ���?"�g+@!�{B1�!��������F�pmS�f�+�����^WUa�7�����eުzS������e�c��; �����9w0㈬��	N�g*?���AHD��v�At�	������
�$�Z%!K�����.>]� ��E��XL�<��x�h��=�v��tx�	�K4bq����[.m��WU���j�[XE�Y���䨑�4�dD$�4mP!3B� g�r��j�;X0�N|�3c�w���o���~#-�=�����9��Ӥ���M]�;'d���B|��H�
E���Y���1A�6%e�!e�=j�H��\��j�]P�$<�t�p�%}/����4y��P���l�1%-(�`�T@2F��lsn{
ļw��#4�SsC�u��Ah�L+q2�A�qv�h�����R ,��3�����Q��ҁ#(ʫ�����Ε�P��S��v�*��c$�*#�����e	o�����0�ίr�t��K!q������pW��d�kw�^
��4i�b��>փ9p˶[����\5a 	�}f@k����k �Y��_$lU
E9��E�*h�L��cF���c[�6�*r.��	N�D���v�� \��ʓXJ�*��f.��:�"�1�%��"A$%�Y萨J�/b�t~;��ή�
�>�Bؑ�SK�Y��]\A=i�i�I�̩����wȝ
ԥ�
(�/�` %S ڍ� O X�҆��}(eB�����7�Ɖ���"�t�bx�"i/�`M��/p�( Bn��́�q0��z�b�k���#�寍��R����?��}�����Edt!\W1/:�(�r��ٍ_����"�1r��!b��^��W�&�>��X��CRoGB�ꪮ
�����F;859Ni|f�Nn_ӆ�������2���S\���B��w�Q��_�k��(�ºb[����B(���E=ʗ����PsP �����9 7{Ѻ�#7n��!Z0`�+@���Hg֭�W�ŀ=߯j.&,ꎄD".hԃS?�Tǃw<��?q�M�m]��D���k{ZZ7ܾ�w��t��vL䃾��b��R�o~Nكx�����}4!� ��? P���Օ�	�H��9hă����S��O5�i����܇���;>Oc<����b�o��b��"<ӛ�Ur�Ҁ�(<��R01B�!�T#V:�M*D��ӵ �A���I�L���'5��!����$�#M����5-<�cB^�0��#aneў�gꊺ\�+c���HxC�~=�Ww�A��8��� 3���4Ɵ�f+L�~��D����f��J�T�<	sE`χ���n������)ܾi�MeW4�t6���CX������`��	�3����cN�g�7��w��:�����7�?,�%Z�]_²$�9���H*�``^�U�Ø겮c�3~����c?�xj����p�3���מ�	�/eʫ\�+mc��+�2�~A�e8��n�n���tS�<�3��b(�b����2������i��_��K�����,�U]7h��D{�}���W�Y����be�6m��vJ��0.cv��N!9�qh�l4~�.e��$��t����Xao<������t�Ǔ�2~4�N�7]��]wd�n_�nnߝ^�������o��-���	't��`(+i�(���RX��	�b�Q^�Uz9�Re�4l��p�֫t�=�O-f!��C�P�=
tU���P~Ty���n��n���8�����N�q/��X��O���U�~���y���:���S_���B�J��f�	]��-c����r�`W@,����`��[Y�H<2�^Y���AD`����ܡ�@gЈNO�{��s?0>�>Ͼ���D.�^�c�5;Î钲��vAb��B��=�/��x����,jE�#�@�)..��X�
���Q��P��Ub���]_EI!L��2��9n0��DMIE1��M/�NT��(p�X���!%�RJ.� �R�͔6Ix���n�	!���@(�+�\���G�.���h�Q�E?^�r�U��8��d�n_����� ���oP�Ǜ��#ѷ�`C�5�$�͕��*E�[
�5��'k��%ŇD�D�Y�a�L:唙���+3ٹPeq��˭j=uG �
�A=��4���_���<�f��Ky��^��#�\y'� G��Bc��	���LZ����^c����D6N8��hc�Qe�Uu:vNg�n��ζ����������~���DI~%˘2��.Nߚ�k�Qǁ~d1���ױ�F.�^?��Ԩd��
S�T�!��^��]Us�Ȩ+7�-����N
]�� �:̘%D�L�萵�5z��d��u��Ȳ�YV�sH$��/�dhl�/�q,�'G��v�D.�a�r	VL�#L�-��X�́"�2( ���[I��P6����7э�!����Vq�s���F��͵�*ܾj-n�y>�=P�r��_�"�oY����&�-6�Ȣ7@�C��POE�r�����
%��H�+��(�!��e��t�h���6n_.ȇ��|�s/����e�ן�
.��H���ו4��n?$�b#��`�F�¿t�.����pe�+,�c�:�Cı (��f*�*z]j: g����\,�D]n���}=pZ������jp��6 �����É\*���2CÊ���2Wf����/F�BL/��a�BFki�г#�IK��U���!����c-'������۷g�p���x
]�������b�� %iP1D��<�RL�$��g��C� N��E���mط��raB-�E>D�:��E��&&�ѭ-�Q?�AVVe�2՘[W+Ղ�(
�G����WD׍�.v�3�̈́�ȥS&���OU����N���.�UA���\�޹i��ċ�}�%�����d2]W~��]N7P��_ ^�'~܃ǂ�BZ�ރ|{��:�IZ�Cgi6Eq  nD��稦U����f��Y�K/�h�S:A�����{�ۉ"�O'lC����C�u�Ժ�"��S ���@�zg7a�"���c�}���X�iHG-�t���� 4]M����?��:�Uh�O����NГR54����PO��������m*�� ?PYa\�a }��eS�H��q�37[�ٙ��S}�!>�;�v��a��=��i�>C� �����=K�C�?��^:���,B�O!�4��/Ծ�	l���>����49S��i^�ZwIi	+��	~u�ɘ�f�
#�]F���!�nW��K�8;mn�`��U��j7�E8EePU(�/�` �Z Z�x%M �#u�g�L|g��(%& �T�x/Qr���D�I�|���Q�`�3JR�l�@l~Ί���eO4�d�'j{�-eJF/9U���&�*�*jf�,���j��K˛�.W�d�K$�����ݭ��n���쉵IcϘ^��1��ck*FK!���������H�"MPt��nQ��%D�Ī��ac����
��e��|\8��d͕�$cs�L��ڝ��,\��UU(\�@!@| i@ʏyE�X^XP��@��bRJ/(Z�Pbj��L?���O$]|����݈�뫥�͆[*O=ɋ���EJ��9���1%���Cƌ;f�~��v%j���;[�Lk׬��HN(�y>d3f���M�-��1n�sg�y�¡І������8�k����Z��9!��->��+�~�TS���|���C*���o�y�����}/q	96�?)��v�'�Q�-'�n$����H��o�icL_-՞��x�i_�k�Oy̿L�s }��	3��|S�{8s�)��ۥ����x�I��5���i�w�T3���	eҾVSM]|�֮��+���R0dw#C�x2��Xt�|WHc�w9�!Ağ��f�Erd�Gk�#]�r~��������kCS�8�b{����x�Pxu��D�ԭF(}�Θ�.�2q����N�ʇ�=�Nģ��l/���(��%>�}uJ��%Ygs���t�:���_�9 ��9xφւTkj�=I͕5�ln�\YM$�[I�]���>��; ��P����eC(Բ��ƍ��k�)qXɱ��bWG�,8�� �ǜ��S�`�a������K�LҞ|�c�S
�|H$�=����A���a��m�c�Q��?�6�ూ�,��� fO�����'�/��|��ƾ`�a�g�e/�lz"
ոO��o�H�3��ZB���A�GA�`����Ɗ�L0#��E)�G�/0�hVa�I���a�>�^-�J��X�"i�0W��k7�JΥ�`+"���7��{w �<:���Ґ����?�]���Gػ���mDY�����gt�c�2˾CB����	]U	^b�����ċ%^��K���J�d�����g\2ΚV�V��~��3}�TKQoM8�#�G|��/~����g�AGl`��S�;ĻW��kZM�3���k�ƬO�M+�8#�����PN�Z]]����j�c?�p�ʯ8�T��RC.D�#�� ���v�Gz�ny*��"v�]�{�mT.�g ��6؞��\�P�d�j�fCkj;����Ҽ5�&e#��fK"mIlnM����Vcsk�	7k���:o�݃�>&�&,��/ib\���a"�0�m�8�۴1�8R�戁if"�F ,FK�1u�P���t)b��g��]�܇�����sY�n6�U!Qj)(�I�jj��M�'N��ؓ�q�,�e��L26��P6��QF�>eSR�V�� O]gC�]��VT�ָe9�>���%�Z[�7{r����T��T}S��\�-ҽ���!��9az�TVk��wٳ,��Z^��:KeE3p�p�DJ���St����]j�b5U��T%�J��g0���Ƕx�З���d,_ś��&_k���2�$7U��]�Igz_����W}�ͭ�����ͭ����B��@@1����&�@�������Y�}0���>�2g�|�2�1n4�_�G��(��7p�X>�ނ��Y�v��T�DFI-��+�ۑͪ�=cM�y�g��������j+WK�3v[��Y�ͭ��ͭghZ�R І�iP���7
�"����'��R��ګ���vol�m`Z'׶ڠ����N+�bs�T�^S��y��\�C�.8�
MH��L�0"��Q�$G�׳���f)��(n3<�U��2� ��aSp ]����'�� @B�������
�x=�0(�n�$���۫�*�r1%���^�Ğ�	=A��G܄�p��y�(ï�H~k�t}|՗ـ���g�]�kj�U&���+K�ds��ʐ�U�1�"K�k�J=,	)̈�C�X��6�Ax��@�c㵂�N����&S�p顀�-#X��@�JcZ�������/(�p����ng��F�b������k����*���J36Q��6��p��d.���ů�A@��g��7�� �A�����a�K�4@$J�ӵS"n�zYsP("�VM1%�$kD+��ěp����nW�l����f:��������u��Llneb��N}j�x��\i����}�B�WD�N�r��}�E��m�3g�1�G��g����nB�������!E�8���J t�h^4�-�V@P���%4M�Lé�Ϩ��3�8�Si����L�ͭJ86��ܨ� f�4DfD�`D�$`"��p�c�j��1G��r�5��`C4�͙��(��#������WS�aD�̙�YS�Ĕ=�)M}h�
�fp�Pi�uF�r��(�6,�����;���2���H��%.�b�_Rr�t�ı���[��f�WL���a���ȟ����2j�/��G ��" �*�0�y�-<��O(`f��z�\	��m��EF8-�$��',�L��L�V~j�=Uw@`ۻ�a�R՞���ܪ�F�	T9�"�Q���a� <��{
% O%t8$�"�־��֜a�IJR�(�r�r����fĝr�p|:ox�I��]j��H=��{��{��3V��|����F�c�3�gvG�N�X?g.��10�ԧLf�拃ф���h���}<bG�v�Ԍ�ӆ:7��uF����h_���w�;��̵� P���?Z-,jcž��� �F��x� �G��\��~(���s�(�/�` �V :�P#O �2�
5\4q����OM���8�Q	���@�u�3+�MblX�hƔ������<�#(N|b?�¾�k=�/_�n!;�,�|�4�@���=u��u�ge�Q��KQ'�OB��EmBr�
�mQ9�p��;��d5�/��Cl�C5��@Ւ
������pȪ����l@r��Lns�>R�Iv��n6���꛾�>A��a�+���g��}U�f���MY[l��1���$d�6}? v?'��K˹p�CS�}�}��"�qCr��-�m�ڽl�
��A�.Hn� ?Ũq1ґ9q#W��lh04Y��n�P���C�Ї�&a�Q���'^L#�ύWS�ВOݴ��S7���E�ɨy󟭢l7�}oq���Sn�SUM�}��o8�Wi�~`k��/���ܓ����I �Ԛ6��rQ8jp��bc��iQ �d� �3:zh}�k���qb8�����	�OO8"��`1X;Օeu,�����;5�ȨC�R7��ʬss����T�}U������q�)�
����Y�#yL��d�i��2l��f<Ay���QCd�%�%b>[��g�_��U65�ѡ��@Ķ�t�����%�O�.\��/]J����u����9������$qƢ��{&�t�v��D������������v��UF�D�%_x��A/Lm̢v1����pP ��$�K!ؠD�Fb�fG�҇:��PFr��E"X`G���Ͱ,�p�:�լ��ܕ��(�&�z~y>w�[xϫ���-UB2_ƈ��3ߛ��}�K��'nz��J��ʒ �)�^l�	:>��,
�lΉ��}�R]S�S�NF=��píjr�ֆ���Q��V^�C^���������0����f��Ü�,���y�WUK*^��څ���������ǡ�x�Q�i.�9"�}�l9�}sq�)v�}��F���$�h��4U/X�|�C�E{/� @�bM�xJPe���%��m�Px�1.QJ�h�P�C��*f
4���l+�I"��c��c�C%"|*asE0H�kl�����:��������K���f"m�(f2e���۷�1��˴B ����p6��l!�΂�K�0�&�|�[�������&�:�o����� ��#SL%�}(
?���8��Ql5s�b��p� ��` �H��!��}6�6�Ey�@�C�d��M������aC��/�as�lMg��c�O���@.�)`8���G�)4˜���Ѽ����K�ѓi霍xБ��&K*��������2D+�.��O��Fl��q��/��S�����"'85�1�/����a�ӛ�����B���;�2����h>�⣟�v$����;��F��$K�p�d�f�6���{B���r�|�;���PbΌ
ߛvv�-������DL����M��t��Mi�R�1Nn_Mn_����y׹Q�4�>�߉(X�"�GCٴ���=#$���E٢�}efjˍ�o1�Ż�!
J,�/�Ͷ����}9%��l��U�p��nJs�HLih�<uO8b�J4�����tr��vDJ?�y����2�ͷ�^�{)��a��tv�ݓy�p� i�e�Q���RK?�r��MY���9$���#��	p�5��Hn	��
�"�">�f���1Z�4�4|� 貑���K��Nh��5�$K����`	2�я_���?�'O���V�IO�գ|</�����])�o���#��ō<���nj $��o'!��K?FD��V�쳽�i���JKl0�H�������V�a�h�d7�L� v��/z|� ���n.W,>���Y����n�b��z��ů��|��x?�\����f�q_����� 劙���Կ"�\�g��� �x]	r�kx�t@Eh��>�L�Lv{�v�G?����NW�¡���s�|��VF��eM!v�s�i�$w"�� �k	&R1��$0;�F��l7��&�G��Ѐ�{�L	�+څkpvO�u|{��g���-/򘶆�'ydFl�Q������/�_z#YYF�l9�K��I��Lӗ����hΆ�kG9'������L�#�Љ�Y�O7|�=W���z����.>��34#�(�Rh�r��I�T'���`�P.�}��A�qe ��r���?(*�#�[l' �!#��Ɍ��S7��/X�	��b�]㣎�u��Mn_�n��w-��l���>�|w*M���A���(��C2"H0"IR�pB��@�r
�LI�N�R��g��v���*��͏��f��t��G-�p+��f}X��F�W��/qB2�	�
�1�#1��܊|�0=�Pn��&�5zT�-dS��~����V���H&Mj��k�Lܚ?[,��Q��ѿ�đ^�h����G�j���N�GY$[�f�OGT�K��*-��ۯL�&:�.|���W��3آ������M�n�2��O��V�����I�3�e��@��_�<$}@��ɥǌ�&)��Vh2x�V+%-r6���׍H����[���iƖf^�
ߙ���)d\s:@1[ԪKL��[b� �!r_�����\HY�����(��g������{��JC�K4Bs�$�5Ҙ_#����kU�a�&�󭘥����(�2[7~��q�C�i���H2�]v.��x��D��bJ�vA�Y�+\��j�ܐ�1�.Juq�Lc�J0��P��"Ǿ���ET���U�(�/�` �K j��Q0P3�:/�� Ɖ0Djч�`D�������c:]��%(�2��x�������'��V��[��oiX#d�hv�-S
���5w�N�U(W�)�`D���u��BȂ]��y1S�@qD9��(fc��D��S#�dQE���ȝF�4�=�Ff}>v�����g���W�}�sm�`Z�B���C����g���W�Z�5dO�d�R�do����I��I���sO��0�殭�-Yꓧy��yε�&�#q�<׆"K�W�i�va+���V�*�51!K�F���ܵ��h��Ҳ�����zk���q�͟ɵ��x��H�5?�t��o�W���l�����D��(���@f�5� �ʢA��hD�42էk��f���@���{�Nwm����@Q)�>wm}�F����A���k������'ѱc��V��䒌�%�k��ցa�D���pR*=�.��!���"��G�]`�A$��qHD�Eٚ�~�:$�,�~��=s:����Q���"�c���yH4�'�F�D@�ũ7܋t��n��mU�޴��^�A��lA�:{��� J9��F��2��$��B@ #�܁GȈr�x�o���IIAZ�ٿ�O)�4�<wmy���!��i��o�g��M�l���^YH�C�0��/<��v���^�h<�5�8Ͻ�������k��tʹ�dfB	E�M7{��J�������"g�kk�ܵ��p�kh�)�rP��#F^?�|!�Bb�6qxx9`jjQ�SF��U#<���%�����2�*ěA�!l#��C	Ti$�A�������F���h4:�?�71�g�P��p������=°.),D"��
�p�2�]۠$�/���5攬� �cf� ,BR֕a�	`���kl"�GQz*,��v���k����0����DY4�MLO)zz�=�z�YK��"�+�g�۞'FݵEu��꜐�d������� �2��<gO��A���fO���_|�ǂ$^k��YAtEa�}g��Sz?ƿ�U��c��I�\
�qO�d9���$/b���hFA$$���=����Ro�s-Wwmמ���"���!�ˬ!�9K�£9��S���^��v-� ej���I�g��^���"�C�tN�X�� �;��6��ܳ�K��}��<���g�P��8ǯN��/=���co&y�l�?�G�țFڴ/�<צX-��&�?J�/���(�>����ږ$j�X`@"8�Y�:|@�)V��Y��T��윉�DUEY4�(HCY�t۝���K�ׅ��͜�5�:���Mٝ�3�$����`W���A��h0���y���+�f�T̘��d��UL�W@�"��>ϊ�/TT���>WbL/l�����/)%Q��hF��ǣԩ����[�Xa��E�fP��Ul�3+��(2T�d�\��#5�AI�"+�h�"kY`��d��N�9YD�r�������C���!���>��k��@<�����*���KV�T���J������R_�T��(~)p���dw%^�7�n=��ueKl&�� K����x&�7�[l�'��e�S��AU�@����8]�``��Ƕ�<�$��T<�A��V���E��Eԍ�����aѐ����s'Lڽ4Ʌ\�A�3�
�H����`���'��7�Ђ���,q�������K�����	EjbJ��������M���|s��sٝ��9zvs1g�:�B����*�M����3�Y�X��[�pmA�+�ѿ�b�¥���:��X;�5G����I��(����3���<}���������4� ��R�!���$Irp�2 d!�S�!jDR�ԩ,s�M�����D��J�3)@G�oj�̖�����:R��N��E޽ѳ��Y6�Tտ���S3#x<�����V�� �U�}� ɒ�o����0�<��W��IjBapU���pޏlK�W�������I5��oA��㏸�^E��D &,�n⼺��q^(�S�zDpҖ�X��#�|�$Z���p03zȎ�q�`웗���@1�,*��I��Gn��I��fǢ����r����n��دg�Q�."��F����LL��W@�
�1���2�|�p�7�l1B��~�� )�79h�� �hc���M	!��a���[kW�ue�f��
�Cl�
��u����eİ�dd����] ��hr��&�9`��A�܅w��ܛx�+��&�eO1��"��������>��E&����\1�+q�S^��X���'���ߛ! �!�~������d��q�C�D�-�`ƙ^��:�*2�x��P�c�����g��ӊ	tar��J���.f# t]�	������(�/�` �I �z`<@jQ"�il)��1�v��f��l�H�(Y���Gb���}>h$8C;��_RK+�;>��r˔���)�[��8�6��]e;w�q���xY��4�)�u�t0��f]'s�3u�vg�w-�f	b[��T�DУ��0n�,<��J�p������wCso�Bt4�͹�(�a ��ʰ�,l�T�m��K��aR�k�����_^Y�*|�H��3�52���#d�M-#ϐܰ\�d�j�	����*�1
�=!̺B�Z	t�1�r��i������1���̶�<����^�b��Ҋo��NTĹ��@%��o��ڮ����ZU�M�WU߱���]��j�:cWUsf�`
�n��0��fݵ
f�*̺<7�Bgj8�{��#�F�r�g�=�g�����/C��/�C�ν%��	kB���\[��r)��ª~�������m�^��6uo3}��XE-ځ���9��`���hd��9j�u��Fy�:�9��f3�;��m�� O��/&�ϒy��i�Qځv �-��~��D�����M���1��J[C�{��00pn� :$���X�sH�*�T�H`R9\uȮl<�k�v�9�^%�˵]�I�
��j"x� o��V� ��#¬KTa�U��0�����������E�u�pO�L��u��]#�%��َ���	m���ԫ�I�9SBݷ���;Cՠ�]e;�YZM�1��_�������g�X��]��ڶV{���@�������L}��$�x^�z�(���{�yn�~��g�]�=���n
�rf]4M�ԟ�&E5�op;�gh�W�l ���]��;Kwui�/���^�ì���c3��������.6S��O~�>�]���Ģ}��A�����>u�n�f*�u�v0�����L�D�Q�d��G��TX*��KV�K��_}wS������Pܰ������`�ķ�e�A�i.�g����C�JKHy�}h�`3�B����E35���\��C}J>���I��z�6�K��Փ��y�ղ֙��D+&ª���l�1��2�	�4�����<����̃tn�d�g�C_��®�����E#��YתlV��@Q�9�����H�	dg�v�}�B������h"H�"�����Y�PA r�~��ä��=+X�>X���o��V��XďO�Ы���S�gg�)�B�`"�p�+��z�9S�J��z�6�mJ�_��_����ͩ�2ug��uC	0[��4�}�
7D|�y܄�=���!��jح����+S�ՙzuG����j�6�mrLMH.�~1��o��][T	��
�
er�4j�+8�n$G
��+�ĂU�K�zy:�����]ķ|�L��B�>#�DK�TP?׫`�f�
ߠ��?9RdO;����v% �v��9ř���V��G.��8L*,lu�1[�b�$����6����E���V#犝�l|�I��_ �!��~��N�`��m�F\��4�iB�0m��9���{�룴�S��b3�$F���lq�!jg=��P��g�į���d��S��vK*�b]�c\��K�Q�U۷	�U���vۭ���j�E'Ns`�ÂY��:�b&޺�?�a�{�86\}�u.kY�y&[Ǔ0�A��)@�\���h7�<�p�0���(������P]����j�P�(\����.f����,��Lm��ڤ.Tzۘ�h�8^�ЁFn���eʴ�*�F�^��2���
���c
IA�t�������0��afNJ��0$E#�,�����&�NK(�d��V� �bqۀ~{��e���G�,�]�����q����N��v��Aն		H{x�A�`)�Ъr�IאF\�e��	�jI]��2�8�@�������b�HH�QRg�1��-x���.���ujcZ�~\�:�p2������l'�>�c��X�f5s��e%g���)��?�ǌ@���L_8_#?(���񿢋��/9�1l�A���
1ك����^��|���F�X��T��-�@3��h��n�yy2��pU�{��9HJzh(�~ܹ�pv��/nv��8E�[�����Ƈ��1�ƀy��Зt]�h�e#ظ�S��3���5%�J��Zq�T�	W��R� ��x ��dVq��g��C�������&,��������8	t�/�e�Iu0P;�7��]�>f�$z�\�OL��"���N��D<���-����Cr��J���b�O�p��Y��[�H�ȳ��j27j��@)�\�R��������)H練F��׼͛8�9D�1�C�W{a��5(�/�` MM ��$O0���
��2�#�@7|W�5�7�@�|h���xmj'T��{"���$�:���2Ft9p��x�6�wm��4�D����Y?�ݷ�-,�I��غ��7��V9RU�8=���e��DIc���h�iI�i�s�*�T7�3��GN�]titu�L����Cd�x��p6f�L�w6�Q�jM�[<����Jl�w�P�8��MJ0��6�F��5�����]���p��O�n���[E�zD\|Fv2�>}*T�6zLX;�E 1�k�)-��tj���M�!�i9��h�,�gn�Lz~�&�/;�^O�씱�����u�]�J��#��ف�%��.ʰ���a��?��孼p���Q����zC�*�y�WoH��Q���LUѤՎreZ��325	�i�&3(�4�M��&=���0ۻ~š�z�I����{��S��S�ȜmR��4��`2������6)�9]sr<��,��y�8z���Q�qNBt��(�#k;��B�B3i6���*���
2�NNXq�j�>�(ƶ�����a��`7]oD��"���s�@�.�����5bdY�I�-hp Ac��Xrm�~b��[P���oLH̔���}`p�싆
+�5l
���M��v��L����q�4�;xd[Ͻk�z7�[�:טPlG�뎏FWS��l�:��0�_�R�=���r�I-KhQ3mlv����61'���.w��Qd�r��D<il^V�D�- Ɨ��EHu1M��j����"����Q.(g�CsK���L�K�a^HuT�+
���<U���P��U�j�d~Ln�zIb��s��谹�W��% "��󷽔���@��J��p�F���r�+G�7��L���ɷt�J��F�Xf��AM����w��{��.�~���sU�����ԟ颉��qBۃYb�����"���Td�%1�(W+�r�6�bi��i�ht�1G�����Kb-OM�8��ɠ^m|����L��7,����P�˽�������'��BP^�vzZ�*.jC�&d|7�Ɔ��b��a����y����PM��t)�vӥ4�&u������ZnR��]K��:k-{���N�a�8���S��������w3~|�}�����9�v`�~@(�
��pʎ��[�����%��˨�����
ڕi9�6u�v+�R�V{��ɓ�mc�űѤ�Ω����:O��'O�aS���J�A����UkF�RЎ� �a����l]yu�{�Q���rk�cn_1�~^=�t�t�Ϝ�ݛP�[9d�RG�Un��n�*^v	��D�O�`�3�Ɗ��5I˭畆/���J�'���s���^ŉ�/S|�vc㼏WȰ���>��!@���CC9��]�$�`�ѯ{�Gr��r��=|��m/���_/��ZCX �OA�R�(鲃8�[DA�@p�Z�p��bk���TAB%�
DtX��W�D�B
JY�#�!#��EG9��(�E�VS���v�����n�O�lj-�mQ&�r�d=��ݰ6ݻ�UeR���U�a�%1M�+�({{�$��������i��u���W��2W>2�5e�&T�+�t�T1BG����2B8q�/{˗�f�D0���3���2u���� �F�=�2^��6�	��ӽ��\���tj����rI;���m�1i��b�V��&��T�!=�hՑ[�" �����dS+.��L���XM�BA� ݻBY��T��+�$d4u�Ba)Ēa�({@&rG?���ed��=&�C�l�m�߱yX�-��ZL���ؠ��I����e�}�e�	c�9\u�H:����H���4�L�e�<u�a����_��! �|S.	�J�+҂������(�&��eV�ȉ��>MB*S�Q��ۢ9����(��TfDDDD4Iڰ�� �%�c���$��?�_�Jy�����I�1�8�4u�Q7��u���&r����)��Lr��{���:Ҡ`����5tp�כ1d��⚊rĪ����oL��9w/i�;�;�>�(�i��qmW�fڿ�a�e0M ��)��%V�W&��_,�F��A(.	K�VGO��)�8�o��jp�����jG6�y��}O����-�z�(�J/�m�x�Ƚ¢�S<� N���FL���m��h�pY���ԟrz�́ ��4�f�2ei
�h���q�L	�}txf�;��ɋom�����	`�g�(P�7T���`\�8�g��b��j����1c`���pV�+8�\T�@���q��RU���2,�dc�L
�����=#}�*Bcn�d�XVZ���7��1Ǻ���a�S�����#�W'ג~��X	�f�D�A#� \Y48�~�t�@���v"�j��I�,�/����2/�Ǹ�$� |�]B��H��
���(�/�` =X ʠ�$O �*�R��/�ɑ|�| ���A�^_[��Ꮋ����5V�KH�ҙhJ��
��`J���@g-��f���Z[������wJ+H6�ObrCB +��Y�í���<��꩎c�o��Wu��cS4^��9��n�\�5�p�:� ������`G N:�fl�a��V��sq��No����b��G>�j��#^��2Ew�44��ܺ�5í�כ�$^��9�%�]�'�ē�a���d�S=Җ�]ؼZ�(E�v#u��t�Ks�����'`���Dp�@��E�l���x�(���t���KI�����%T�< �k)��w�mA�̏TBñ3� @���<�I�����"E�{?`�DPU��w<]YՃ����D��sZ�j�Z���]�)�:3Wb�����fk.�:ϴ�M]�4#*�$�9
�a�0��t��Ct��v�̱������߹��gA˰�!K�}��1\2(Av��h/�0�{}�a^��f��� x�|���p8]�0���d�d�z�Ҏg��?��<�D,̄lc�Mi�|�E��Vq	٪hgi��݁�E�SZ�4nk�Zbm�LF�U8�jf­kfQ��֝�V�=VcS�#-eSY�8"bq%�yv7g�t�!�ؖu)�4X�j��Q��[�T�,�>	� Q"�!���$}�١&:���7w
`�1>i�Ǒ)X�\�|��hZX�8`}��U�P��68Û>oȇ)�
���O������Е��tl��*W��>��Ig&�ˤc&��:~[쒊�k��sѕ�"�v+��-�Ή��^+�<ي�c�~��ۡ0R���"�����+`_V�l��ܾؕ6����^��|)����O��ϩ!(�2�0 �K*	,���\�cM�뇐�����ŕ�����Xb�6����]��#��B��ǲ;��7�J��à��,�c�����W���?�+_iw��g�<��ݠ��:7i#&�m�q�v�:j:�t̳ɔ�Hp���l�q��LǮ�M������F\�3p�@"
~�T��{)��9BA2����"Ia�ԌR:l$z��J1�>���vq� ��Y�.fh\i` �N�8}�ܘ�36C�����K�+��l�����\�pL�9�չ\K�u�UgZo�F�<�y&�q���5��h��`��`�`���Dt6��3�Ճ�{?��<0v�5d/7[H�9���^�K�	HYH-n[yƢ�a��0G�L\ZQ�I���K�4��jp�iפ9�.M;�m΢L��3J�=�='�;��%#���~�?K�u�6O�x�8�1��S�r�k��3���3V�p�v
VT���8z�G6� Ϟ��+=�4j��7t�E�ҳ�Q����?k�o~s�sӽ�^Fƚ�k�<{͝?� ���r�j�z�Y
��MqA�C�88�Ek��"��y�49�	���`�[�X�Dq�=�������߀m�@�L����?��-M�`g�(�9�J�:�J}I���'`
8��H�5��H�uI#�u���X���7���ΪR%K%��x�hb�B�Ę���	4xBw�a�i�l�E	B�� ̹��.���?9���K9�Y�F�8U��|)��Й��;�TXʦ�kJ̢���[�­�����tNS��y��Y��9:�W����vQ�SZ��cS1�܃>2����>�x٤��W4��w	i Q���ڷ�屺���eU�KJ����%��t�sU�X��+�J��U��KD�[���D0_r�"���RRK��*���}'��q��M�8�k��"l Ȥ}���#����B@w�٩�GȟJ}�{�/Oեh��D�gR�2���%�f$1u8�R�UE��8����a��I_#(�8V����J�F��N�������=}�O���=�}�M�Ev?��b�����Ɠ|�8V`T.�85�d~ꊁ)3u��w|��I�Wصnfx���pdt�2��ʆM*��5��S�6��2�iI��!Rf0l�"k�����[T�+{�3�3׋����g�=���~�W��'`U��[��n�]�vm��i���<ɏ��5/r��h����	"�" �NQQN|�!�S�S��"m���@��6��r걵�c�)��ͳ�`u�89�a��J�,��uC���.�Z@�I�:�J���$�x{���C�
 �:�E�<$�q��3�p���J�Ep����.�Zi��\.�u���H>s4��f� �.c�j �3�ԎCFV����[���N3��^c���;�~/�4�
�Sǧv_��O�B3�H����Ϩ�$f�4�H 2"3"
�<�����0�2��$��	�@��A��Z��g11>jÑ\Ȓ<Ky�L:�NRe��t#(���b����a$�(r3���W��+�|^v �QP��/(�VF&�R��L\d�F��;��G�[m[��>j�`mo�E��e+OI�"�<�-&=u =Y��.���՞vһ��B�a� ��9d���Jk}H8g1^1��GR��S������W :1��, �b T���{�0�����1�Gi�d�J쵯>�-�a(I���Qr\A��.���Y�{����_^0?0Vx�=�+
B�rT�\���P�7\4�&��T�G��ډ���(�d�$cF�2�M��̞79WL+�τ ,fZ
���b�۷��U+��gc��?λ
nB��#6�jkX>v� ה��S��\�RnvO=�l}��*$�/�ӯ����lN��@*L�(�/�` %M ���M ���alq��]pA�K�^�oњ�.�/EE��J ��xd~�(<���%��F7��X�l���gJwu��Z�+�L)���4Ӥ��J3�U���c賁x�ЊϢ�灝��*���%~˳�k«ρ��'X�`��:/#���Ki��nt�f�6zeZ�V(�a^���3d�ڊ�5ܹ���n!{A�:�j�j���S�z�z�?�~�#qn��+�^��'�)�v����YD@V�S���y)mN��ԅ+9�&1��*ƍ+��K���~5�}��pҴ�F ��LԸ�u�Jv�� $=��ڝѴ$J���z\�4��;rv`�9�sP&�0�`��w��JWN�K�QҐz�Q��#��t��J�Y�.�J�r����VT���d�+��mEf��6J��Bp��C���@*��j���#�
�L`��S�l�&�b�#�\<+Bv��@%!-}��W�ƕ���vI�_M7�n.�ِ�2-��w�d����uR#E�콪��D+=��M>b���g#@:7�������U�^��`q�gL3I53�[h�\�V���A�ï���]h�BnO˴$=߬�c�A��\�Y��K=�E$ڶ�r&�gH���+��kx��$hn��R(����_X���V�L�l�JZ�@\%v���kڬ8M��^x�đxW�{:�N����+S��h��X��s��-�,�0v��6m�<�TT_\N�-ϰ#̐Ա~Hu���yO��Ξ/��^���eX�*�V�L��U�>�f��;K{?p����fqm��b���J�f1��#��D���x,_ơ� ��+}�S��}�h��e+q���Ϫ�b���#[Q5��U۩�΢�KW	� K}��qWQ�z��]��K����\Ww��]g�ʏԗ6G�U�l�E�Z���Vq�>�J�����E.sՀ �풔~?"׵�m�w�k@�
�Ǖ�e+1[�|e+��~VT�	*�Yg���q-0 K��DH Q�mN��.�@�H�\��/Mh�5c~8SiA�Ą�/F�bb�p�O�Gx,���,����(7���`	p��e�@E��=���!�v7�y��x��(�AB�͙A+2�VT2u<ըs-��x�E���a�<Z���◬��:������3�Q�POv��ii�9�@O�@A�
8 U�HT{SOt�P�e	���'N`��R��x3Ú;�1��~7��=��<O����%�ʝR�f��1w�~�$�����F��xĳ�eRvs����ɠ����j��ZgE�I���,�F�]!�F=��v�L� Kћ��a�"x�Eb=���t����*%^dƴ��e�J�Lۊ�6�\�6����͘�N���L�#$��~MK�[�rC�#^m%oy[�WV��y��j����z�Ac�4��X��z( ���x��b����}a?�C� jԡ�P-��.��W:�-�x����6D0F�9�(7�!|8���a�k�9�є*�vE�߸��%���	��Z�ܰ��c���c��*3b�|�w�|�k̅�xSBJϲm�n�~7����|e��x5n���Rv(����o4�6B̢�,���I;��J��>�=5m�� �N�1 ~�4�ײ+��m�~�2-{G<u��5k#�i�ŗحe�a��_G�H=O#�#��#����h
�:��f귻�$.��Vu��5M�U�F��m�$�^"������p�� s���(
=>��O�)�z^D�T�1^�v>��K�_�+o6��eҥ�b��,S�:�^��'G�>R`�7�Wq�(�]�:-�-"��6+�)��ƛ8���J�ҝ�O�䘭~2v8[Qu�@����n~G{c�=@�.��ʊ�����f�r��7���|�����,��C""��H�4��B�t{ �1M2��$����Ӗ�g�Y�*����{6k�hXEq ʨ0�!�9�k@���Z�7R;u��sG�l5R�������BAiEʹ��ٙ�Ą�	����
E����?�ȟت����V(N�3p���Jɪ5~���k�@3�`1�~���t���*>�D�m<�J/1�+T������<�|8Fq(q��8����:��i��pp��iYNrdPK*_'��-��ڈ��6�@�5�g��ldV��9��d����So���#rg\��8���L�3��8�5�]^V�����t��!0?KDZ[�m�Og�,,Y�KQ.�Iu� ŻD����ת�]�5��eW;��xU;���n�O+�b�O,��D%t�IT5�{��,��؊QN�-� ?�9¶z���� �jѶ� �%��Pc��yv)�	O0�t��2��̓�z��R��I:��hbq����vE߇��"D�"�c��������d-G�E�O��[�e[� W�DD��i(�/�` %R j�� M Ժ��G�z�,_�s���|y���������%���h"^�7���]�,�^/�y�}\[�g�Z���f[Lf���l�R��4��$u��i(�e��1��O �>	W���g��Ԅ�h�C/z�[9�٫r�X�9r�V�:��V�f�A�.�y���p��uuA/��n/��ƗuGY�W^l�U�%��j7�w�X�(�]����^=��b2��ݓp��2.�6 �&|�-E��=\��!*�U��y��D��ڗ�����u���&{�24��PDb��+o�ҥ��øw�wr`w��vZk
�{Y7��/�*��.j����<�"' ��f��d2E]�Ű�	)Ol�>Cl��{�2^�]E���l�]�L�3jl_��i��Zݐ���Y���wj���Sν�J������e]"�˺<����e�Tg��=�G�Ң���W�e�ta��{��!H�Ư�$)��c;;)hIS"��U
��'‗$�>���r9�E9i�~�1#|0g�铁�a{���4{PO�umy��IȂ�S�C 0�ҩ��Eq:J�:n�_}Q�i@U�i�֚���f��7�{%�U噾_��3P�������D%5�s]�@�/����d��y�y�Ĉ��R^�Ղ�������?�+�s�]�,�85m=�������`�g�$�W����gS�*�2�lM��0����1F���ɐ�|_��ʞ%��N�Of�R�-���u�,����T!-g]��A^�w�9��#�k��0<:���v���1C�Y93�A�_�f��ۇ��a�R̓��pƐ�$\�v�~��k��;5��-u�{Q!��jTH��P.�4R��f��u���˺9	Is�u	�d�s��
W�X@cj{т
�4e��x��/l��)7��e�$Egk���D���1#�]�#g���3�C��Z(�����a�+�dVy��0zѡu�n>��j���t��<�y�C)�d��<�Z|��fD�u~m��h#�v&1F�k�y��c�ypM�A�i��[�����10��p��y�=�s<�Tqեȕ��C�]�`�`.�t5L�F)�D�9yKO�����-G��1z3�R��x$h��2k�1}9�@ �����Tykom�?a���1͟i�j���ݞ��ܙ_5�e�$ �+�	v團	���������T\�4\�� k�r�._]�gG�
�y�#�1���Ȓk�ŋ?ӯ�u���l>4���h�zd��H���C"Q8�95��x/�{"�|Q �>������{�B�r \�zJ:�����b�����S��O�4^pl�K�a���*_ |�y�`̍
��B��� ��U�(���V$dh@�?H�aN� ԓ�0�~f���qU�6�=	u�Ω)��H����,��EEc���.R�˺EG�˺��ŀa��_�"Ӊi'��YO�g;q�@r���d����p� �Ă&P��)�q����m�1r٤����?N�mK����湮m�"�i�
�ξ�M�	����.БFo,~7�����r�tG���b睊 !Ń8Ir���hF�&P�䑢��$J[���k���`��A��NMGb��:O�<W8��m�Y����v�ZS���u�p�J��K"�d�dډ��Ε�=�����6]����6S�m+M���zq	��ʴ�[��b�P�Ѷ2�YVs�,���5�[_�]���v�Gr]J9��KШQR'K��5b�B�P�<_̑m����m�O�L�0�Ǧ^ƺ1UChT���b�
�S>{D("*8�pJk��J'N�e]%��.nĈ�S�{><��E-$�L>�:D�����ޛ�5�o�Ti�,��
�r?,x�z�����g}O��5��f�c;�ԃ��9����n�e�!����u	�d���}Aǒ"!E0S�#l��7�2`Mه��CJ�P#�h�#�oo��-��*~K�{j�m���TR��"�l"��f����5�Q��N�K	�x*�ʡ\��k� o�axT�og�Z���f�#����E�
��y
y)�����95�^�}��/벽�o���u]��W�UL5N�������H��@��(ŘD��H "I����9b`�%�*�ԍ� 5�Lc�/�`��@��`�B�n����G�h�R��	���_ZU2�*ж÷��\�F��ļ1�@Qu(t�o�¾��'��"=}R]�sqpѐ[�$t���̛֥�U5;��hT�T�l��ϜI����~atQ�Rcy��P��,���K��Eٙ���+T���#��_�J��r���(s�+_��7��q�'��C�yJAw"k��q8f���\��O�i����SK� ?���}�<����cQUgs��E�2��f�+V����Z�5�U¹��ܨ��D2`�n���%�ka��:O#��D̒13��!G�!�kEK�,�r�Ϧ l���;�4P#X�w8��p�6� f�jO_/�['(�\�S;*��*�C��
7Y��>��bw�S5���`r<�b,��3xѯ��dPT�r��ܤ����C ��!Ɗ���jfq5���-��a�!��0�1!�Ԫzuj�?jJ��wȈ�h7J�OA]��x��4��T3(�/�` W Z��"M ����["g^1�[OHyH�c��� �h>�q�V����C��\���C��YZ6�ޫW��x�Ge�sTͫk�f����),`j<x����)*Es9i�(��F�-�T�DJY��`�ZS���\_˅{�g����\�g��Å{f��$�==e
w3����ݭ�' ~n��錈�$�L�� :q'J
xA���mB�z��pH$���R�aw�}6����0jsQ�ݭ(ҒR���$�!��V���D-��x���G�D���#�^:`U��Ŋ����D����>RŶ2�KєM
8k͜~G���Ĺv��p�[�nitu��둁�a��-<174Uy��&D����*� �{���I ]r�0�e�. �W,��i�@�sH�PŲ�SI�̥�()��Lj�SO�n���z�EU3jw�����ө�tq8��ID=��1^�=$��n�5�������E���=�3P��a!̙0��!T��؟�ἀE���ҟPJ(�n(�S}�NF�.���-x#mM�[O���C�h�m�9�[T5ow�oQ%���:�Cp�S�/u�ʝ���GLb�����J�2�?txS%rUc�	���!
�m����D��SzbjG�Q��n����Zs*~�]��{�7d��(��F>�"_�b�m�Ȧ��F����&kw�ˍ\�:�}
��|3&�ʏ�:}ƴd����g"����H�I�|�����ϨMډ��M~s���vaW}=��}�d�Pֱ�g��]��}�#ǜ$> B=9��\�A��I�>Ƴ9t�i��̝��r�Ҩ0�JV��䟉�#�I���U<]�����Uz��afK��̀YH$d���
��8s�ݭ����L���(��/aY<�KP���(VEKR��ݢZ��dn�2�i>I\��d����_2E`rʦ,�cwW�_��v��?/=�;�ܵ߆��c�3�N|8tx�|Л��6r	"���I���D�ćC..��S �3lt�/#r����'��E��� �g}�R�C��f4x>pM#��~_��~K�i߹�G�a�; &���;�N��i�T����p������\�5ȫ�C$I�A�HV1,�$i� ��Bg���X��R��w`��.{6�)�=�W�\	ka7�G8���x�<��9�r��[�S}7�v:�����f�G�nQ��Q�[�r�[�ͤ�@\���,�������e��._�2�2�u�F�?��g�d'�濼�}J�er�B.�Io��T��evW/�U<�{h�S�C�5,'�m9�x|��WO��p����:j7��2����رc +�;@g	�jXY��kj�"�("�N6l��ЀM���,n���X��E�ח�+I�jjƍ�4�H
G��!5�V���Ū|�.Z���yZ�7��ǘNHA1>|p�E����X6�������9A�X��t@k:�J�P����'���?�&N�N�uҦ�^m��i�f�EUõ����V�է����߻�&���(x��Q�s�Q�alR*1�r��Ǐ��?��`��+�$�=�eWɍ��l��'q��P� =�K��>�&d(�`>60%OI�PY�1���&K�la}<�DBu9Aa�	����C�kVa��:?�@�~ⷐYD�������F~ly��4[�=�k�)�=���&�ߛ~M��d�iӤ�Y�iV�`�����0�\�����91�X�&���&)�/n��\Zk��UV�2�ݭf�?m�lk 6��p �����奻��z<"Sb�Ň�'J���>�i��=*Z�q����_�S�Z䕙|IA�%Z�XH����>�w;�sh�����
�BU�`��TU_�o�-�e��H��줒������u�[�:������{�M��5i3oM5�ne���&O��4�s&�#R���c���ѠA��">����4f}�͠1�'�:p���A��㟞��x;v��ٳ��w���<`F�}�U6�AVe����T4��h��sbZ������_Mc�5G�r��pe�Zm�ݭK�/}��������>W��w�G.ҽ�?��u�H� d��ؓ1��!CV4��mޏB�E�v��<Q�cȈ"��:��HS}�m�S]��� ��Xa�MѴDҵЦ�_�6O�s�2���l��s��M���S��6?�ִ�2�bk�{��H��}��5�?�3rݽ��â,n�D���-�0��uM����,d�$#"$"#�&i�1�I���H��9�`���>3���`�=�z.�y�,2��>�����v丬�<�6q�?6W������>_�mI�t�zMx���'�2����5K0�h��AG�<S�`b��+���~|�.O��up�}4`��6@f�*�PК����/�(��j����S0�I��$�;�E�����ı'�؉�9ė:��m�M��D��0���H��J9qR䷏h�$�"���9�Y�g�g�1�"f3�[6�^ߕU��h8t�h�r͓��v&��Zޒ��_~�ُb-br�$�B����RB�$�_��1�-����O�?�IE3�a/Hf�]��I�h�u�v Q�!�n������A�q�c`BDz:����~~>G<�����$��-��S%�e�ud�4�Sx�IJ��N �2R�C�2����O�v8�'}�1���:ۛ~��;����Jt?���cŰ$�OV::)=>��h*�$a��Z@�T5>�ѻ�=�`�m��ൔ�2$ϫ�~ę�B���׫(�/�` eY z��$O ����g,A*Ѷ|k߄����N���V�r!�`�#�m!0��u�[HA2��q����N�N:nwD�����ƍMD�L)0.H�_\n��{�M2�B=��oR6i=�t��GWue�X�K�/�f֋�b��$��[�>�I�ɺZղ�e�<�Ľ�d�D�$� _2�̤��SՒ�%�����2͋�EӢ%����UўhI4��FU--�4%m��N����E6mNM6�a��#y�g��䣻Z�v�$���⁖<��A�re���<>�b; D	���i�)���WO�����#+\!�~"����b�ʛ�z�}���Ik��|���PO/R6��e�j3g꫿mq��[{C�����{��.��lz�I�3�펖۹VT6�N[ڐ�Щ��p���} o�U��}	3W�0��E{��lj�y^� ��E�������;,����c��MA9[t�ձ<�3쩧z���*ˋ:�S��=�S�S�i�sKf)��Oҵ�"u�q��?��H�-��G����u+*\N�m.)��S�����tG����ɂL����
��k�KS	�����Me$@ ����]BI|X�-��wB���SQ��g�!6EG�=%
5D3T�r�&�� ���5�{�滩�ﷲ��*�;숉���J��/���l�m%�.� 16lش�b���멯��:��\���*�.A=!iӖߡl��Ci��kc��!�A@��kAn[3��~&u[�uڊ�l�ID.Gr�gҊt�9v7j�җ��K���	p�'%���,6��a��c��dly`l?P��6&L����@�����%���T��9����znsC�\M�m��ik⊈|�!>�S#�~��u<1�6��hb�`FO�MhAC	��v���sI�̙3g�.3Nl2A �AT=���/����n1=:�#�H����4\-�>��eS���(��q�^�n�˯.�7�:m�S����G��F:�%w;��4]9����ܕsF1b Xl0P4|�m�7T�/v�]�Ʉ�~k�  ���j��c_EV��̧˭�$%t�~\M�@B�-��y˯�u��ym�t�چt��E�ˁy&�ѝ���h��2�P�q�
^F��-�{Qy��P���W�Sx+6�����v|(��"���1"��� �������e�SQ�U��.����ֱ\Q�L��>��S�S=u���E���Ÿ�N�Z.����D����c�2�bq�����M�<�>�[6�{�:c��
������ZHp �BT빞믧�v��)��P~�d'uĩ�|�����Os��}׊j���V�-�8�m��&�	b����#O&y�ASFAVV5*�R"A�e�.P���/%|������8;��Il!<zq Wcxh�z���'�X!���h��O]J�RBgҒ�ڜe�{��������$��I��N��L���i��9G8�M�&H�g�#7]�0������>f���)(�z��a��n�
!��	t����8j�j���K�i�f��²�-vS`t�����o-�Ҏ�ɳ<��J���g��d������+W}�ߐbD�a�cߑ5�S#GvH������._� t��CJG�R1�d�!�T����X�\�In8����J�1UH��O��g�2{��/x�"e�{�D�/��ӡh��F����p(Z�V^Ԋ撀Q�o����z�i�(�6��t��ي&mI��R��/�����L��Rw��Q��E���"�'x�ĩ�;�!A	r�v2���$,x�d��R@ ��aQ9"B;陨B���*J�"�rbC1�Ä�]dP��r�b ~A`p	��G謌"]�b1i-K�/�/����1�з1W�m�5�k�:mG��Y�R3J���ɇ��(��
qѝ���g���[�[�R�`��������L|wg5�����$��=Hg��%O�]�E���+��EHE1�2���	��i�S�H���.���g�G��i���6��-%��YC
u�rvB9���TI�ͱ�3��3y�(�PuD�'L��2�'~��%�FC�d�ؽ�!��� ��6f!11rA���?ٞ"�9�1>�,��1@�"O4Ғ/?��;�G�~�[K�Co����l��x�ޫ�ĥd�8��t��l�_5�8L8�g�ȿ�1����*��W�z�W�:PC�,X�U�z�Hyg؀��i���i�c��kd���	�N�젼3���!ԓՐ��2D%<{w���G�o�i�u-�yg��á+9z���ItrĆM�e���\�o!KȒ�I��
�P�r"�-.��ha���w��l����r��/A=�YCݛ6q&�t[�k�⨁$�E"""���$���!���Rl�$��ӗA8��K�!��"�R�T0���Ap��h0��F�@CEr,�� �kDZ%���(�Pv�o����	�"�f\
ingӂ����>�EIDoʾ�ʔ�(mUV3va��{�^���fK����k��4���YU�pNA01Ѱo/�n�J;A��vN)+Է�<r$�и]5��aT�3�u�$KvI8N��B�~�$�b��~�GYGE��jH:����{�Xl�R���1�h0O��3��p�4��Π�/����۬Qr�S+]�t~�rq�|�qRF���������5%;f�R
��u�媚�p�a��c���*-ћ�A=�~����Yc���c4N�3����|:��9�Sɥ`��0Q3=�_I7��� ���"hq(N��v�\��p��ǲn��[9��k���ͣtgՉc�.m|��cy<΃�|�L��(�/�` �S ʔ�!Q Zu�1Lh�0 �� K��趨���)(��3@萨��2����{2�yV漫�&�P�uG��u�'���;l5#i{K��Xm�V̍��̀f�ֆ7M�+�,�;�����{�{�+��&�I~�͂��=G����E��2=�i�is��Ǐ�)����E(� �ʟ��0�us�\7�����٘3��5���|���v���(8dk����h�dn�4UO�a�I�{��I��jejK���cL��1%�F�-��`o�s���u��=��w������o�ݓ)keO���"@��)lT��_F5�0Ӓd�_^F� �a�*^ h`�GXO��D��Q���FN[�g3�>>ŵX�	���? Ͼ�@����hw��}�����gr�vx��ۙ����mkrGwλIg*%eV�����P�y��%'�\Û��l�a�����sfv����F6���84�Kk���5M��̳��@�H��r��x�QMfA��pT�l,��Ig��0��548G{����#� bUd4�R�H�)�Z�X�B��+g`-�0�Z�k�L��@���nH�y�1�\ ���h�$�a�Zo�~�B� b��\�!�v���T]�l��yv���/���y��8�s?�?=�=ED<�W��]�ك��P��DN+�by��5S35iF��{�_�sS9�U!�j!����^d.�"xl^�ڡyi�
t��A�sp�fHDy:�CX����O�N�{�������rT�?G5RGuP��?'G�y��nǦyN���Z`1���՘	V6F&7D��Z�-cK�09m�8j�@j��I�ٹ�{�����<�tp�8G�n����y��@N%X٘R&�1�p�4�E���v
�G*�.i�1�����ij��z�+Q5Wa��v��|yx�]��GuO��Q�39�͟G�������!�?���m�|�?kN���n���1��
5޹�E��0ȅ�e��-I`u�����ݫ��lX�^�e����j�w5U���g\㨮�0G5Vzۓ�T�X��w�����~���e᫤p[3�T3h�3��W�>\�j�� x#|�	��P@$���UU��Mϔ��K�y�E�z��5W�JL��\M�J4�K,�W坽��w��Vs��`�
v��s��3��kw*;G�;;C��;?)���S�3��;v�����]��]ȑ��c���;;O�.����Q�������iw������I6�gC��= ��;��=eQ�9%=�R	�=zxz���yv���ֹ)96�t��&�O*`�� `�H�/6ʧe엺|�����C�N~�G�^��C^�yO���7����ί@c��@�{ou���8�K�eN�Oq��1@��`����#�Ҩ�:.)�c���*k���6�̼HȂ8� ;��<��6A��U�Rw���¦M��V�=�h�~|P����E��C]b2�ॶ�gψh4$��^/%�=�^/=q��T��9%5�Yisa!OX�����4�s���@(P3Q@,����Q��Z��Q}�⨎�⨞@�6���Z���6��Ș�@\��n���a><�ݤ3q�Y��m	�tf��z��{�������$g8��5S@�q)3��
��xI#K�� $nL�0	Z>c���S��3�8�#9�I]ޙ�qA�8��;?D��������D�wN.7�ED����`Ǜ亼��rT_���V���Ȍ��0	�d�	_�h�+�+�U��,	��2�1����n3pj��Cb�x�i*�΍瞳�d{g�1�{<JG��wc���H���_r��1Z:����g�(l��8�sr��RX&,�Q+K\�9��ĴSS�n�I��%�֑(���Q&UV�+�s%�S�9k��V��EcqH#q V�v��1w^�X����/t��A��
�Z����x�t뢭��X�D?�/�|&�868f[O����,���M��C���&G��a%�21G�MĈit�jkZ�%K�b\6eJE-�*�RZ�;v��q� 0�3t5 Un�E"��@��U�-������	י��-��j��n��#_[eJ�����x�B�G45K�\QD:�K,�稱B##""2"�$I���� u!LB�Q%u�1�� ��/��Rè4�=�f_���(�#I78鮂��p(�����gC:ӐCd���{�x*n���]M�k�"+Rk+����&J��Q�� �l��(	�y���lSc����b�rB�����ǎ�(�o�X��HsG#K����_:B�����,؋ 1�a���\��ݠS�VMA��7��u�f�*���u+��$M�WӔ�e�� ���Vڵp *ۛ��$D$@M��FY�Ǟ����̂�!�)l�#g���v���
�@��!3�JZC�I�ے��X6��1{A4��ᨾl���!�4�\�-џ��w�I�3s��]��=(�t�^2.�* ��ؼ
�4!S��3�e��c���b�\e�HӔ�_�ʠ��!�<r��K�A�9n�3��&����0t��LR5��w�ݯ�Y�p����*թ(k��o��B�l�5�:��\��ҡ�>z�F�d�8Й����Յ�Ċ0��?(�/�` �O *�<K ��t����(�k� ,�K0�{���%��\��d��ɦ����
 F�w�ˎH$${� I=T9�ˆ��Q!���2�����v����JqMh�i��|"]Mc�6��Y�?=5M��T�$�p�+=vҸ���/#�a�6yℕc"���S�_t��J�Pf�PVF�TJ���Q���88���}=)����k.~����̚�:�k(�e8�ċ��fnWu=gl�K�Mc��^�Mn-l������ ��\��P)�ڧ:�a�΄�"c��.�y���>2$��v�H& B� �"L׼�
�r����s���!
$@�H���LMib��$�e熩
���b�)Sh��JI�N��V)�sI�%\�ˍ���x)���86�d�>�H�����+�TCS=�PSU$+$+X&�-����j�TgƤ�r�Tg�Шu-$�!�PA� ����qx�WW��>�u&OJ�DIP%��
�.,��䎗n��Doj��&�'@ 慌���]U����	 ����9\)�xF��Rґ�RR�s\�����0h�����X�J�������~�{ݗ�=�-Z�l,����vч��?x��O�*	쪆�]�XqEuO9{��%r��:��G�[�xfS�ig�Μ�Plu6�6�CĆΐ�X��\O���H[�󫅸�)\<�]��� F�*;QG�U�@8»�U ����7{k3i�ɩi�_�5��Q�9c�i,K1vl�VE��j8ՙ�ƐLC9 ~u�X���_����@�f� ����J}3@0���T/G4y 	��{E��ނ���+ڔ���@�T,�;�ŕ�QĕG��P��q������mc�m������ߊ6�Ju�-ՙ6�#z7򫋅���N��G�tj|����6a��b/!�N!�H�>�Q�W����Z4��ƴ�����+����+Ku�L�b�a�K��3?o����5xD�F1n��YHZ^D�`-h⤉�2c��g�(�@eP��������;��s��¡9�O�t����u���{�8��	�`��� B�� 9�i�B�+P@z���$��ڽ�����Y&x�d��-�8Y�*�aO0�P��{ ���#�D(�g1k�%�����&�͈,Q�3�H]�o���?��[�{k{����Lf2_��食׼�8���:e
k�է&q�6�y�@q#������޽K�Ls���ia��ZD^����ۻ]C*?o�W��͏�Kl�����hK5���?
7����f!W���Y~c�z2���F��}v�����v�2q�0m�Tg��Tg�l@0��k~^-`�E��@u�]6�g#4B��K��1l^�8[iv��a'�(r������Lt�E��i~�&�����Q�<�-�y2��c���������d&?���{�y���t݇�w��f����Ʈ6U��$Շ/���:F�L�R<V��k�3��̑��RL�Y�3gQ�6�3y���o��C0Q��yk`voN`�~I]J��r��OKk�`��@~�l���(O��}�&6k>���l*?�Q�n�O����tu�#Zn�<�w��VK�L�p��w�=�2B$�����"-���r�Hb#���b[}~��y2������|�٨_�^?9s� N�!</�5�����\����`y� s��?[����D�`K	[BeȤ��Q����)B��F��I��\n�0�W'H8�<hB�yE�VGJ��&R41���`�/c��.�yGF��[�i �r%M?9.��l��X���
��p�=^�b0Mb�1�	l1��[�p�G�24�ᅊ݇�36�(V�n�,aBAA� �;��c�RCH1F@1���ڈ��W���
#ƃZ#`�h���Λ�n�(�͛+{��,S����6����\��{__�i��k)�P�
�c�	�$������� 5� 2�RP���qƽNA�#�@D2��@��vn�&5�ݗJ[���O����	V��ʪQ�3+��,Ǯi<�Lb^�S�O���e��%MPS��j�8�H~���=���'^�;H=��e�.��i�I�1�]0ư�f�K7��RR?``��(|�l�=��P�
-{�;=�,Q��n��Ki%��[V�?%s�ެ�;89�\WƖ�XD�ƛ�-�K�5�/m��Z`��t��\y3c����׬4�u��"�O���H��"�n� ��[z�Qͅ��!�h��۶�o�`���{��"kg,H`��S��l#K5L��K��\D��W{C.ŐcV�F�?$��尼8y��$#�ؔ�}�$��l5JI��^R|��7	Q�O�s�5�|p�ט�'_��2��/�5�P�	��YMl��H}���-��U�ט/Tzw����k;<1r�8Waݢ L�l[��V���kI��)�1�0B`+}�N�Z�HR=��L��$���Ѐc'�1��F�j����BБFB�4\�|Ӳ��s����nX|ոς��Y��\D�Q/�R�SE�L
(�/�` �N z�,P0�rsRx2E/%���n��:%A찵5:�*��������FJTKRET�5����������X������d��FF�H)S
����M��������E����k��3o�ya�z�BZ�5�}/ڧ��{�3}ՠ1[Ap�o�<����+I�����#g��Ɇݍ��C�`(B��Hĕ KCx��#�+%J����&��,I� &P;��%Ka���,.�cq��������,;B�X̼�H�#�8�"���!=�f0R��0^�<�r�����j�3�A� �����(��j��瑊�9=���e��EM��""P�8�ν����$:٥"���gj=����N�]��?F 0<�p
3��4i�~�A�o��t��I!K�&J|�����<6�{�� 3�{T�Qզ"�b03k�� T��n>��k6�("g蜥u�5�RZ��@z���#+�ާ�&�����Lo��ϔ�I/�F�k��[p�N�����ͣ����i�6Ԏ�I-"2��-������D�]��3���J;�T�LI/���j� �g���r}���(�9��0v))�zQH�YzĮU���(��B��+��>��af�+���p�oy��7��w��F���V+������C��U�����p�f]�|;L�,M��pD�~��<� ��[�R%�����
\��Y�Y�Ӆ˞���eӸ*��d�ב*d�j6��>T}3=�K�
�J���J�h��{fJ+}�+R�)9�<�n �Z���M<�S��׷�p7$�k�3�V:~̃0u�7��h��^��o��<~,�[�_��+ؽ�ʺ�p���*p���1�C�כ��cjX23b޼s���S♰D�^�j�j�[O��b�>)�7RQ3�����_Dē��3���ͼ2�_�y\e��e�q�i��f&������w�K���������Q�u��u��H��@�f6D�,Q���8���#,P��4t@�×�c�� ���Zd2�f3�ႄn�6Ă��1cF�66���r�O�,!a"����v�����d�3Rm �4Q����G�>v������3��g�sʈ�O|�:,�ˢʆ mH�Źb�P�J�|�p��a�h��T c��`'�����b�+Q��L��@�

�/5o��p�#����)S�p�ED<4�l��q����������l��`�4lv�c<�����f��n6����k�ї��ѧ�]@�;T�k�K��()��H�$=�D��-��H8�Kԩ���ϔ�g��֜�\���|v��'SZx>U���5l��4i�Ӌ�	<?2�"��uz�W��8{
j�!g��).�:�@�����H � ��b��c�=�x�~Ĝ�d������LC���j]�.s�u���� �nfK���ϼ�(�[�M��ub}*,cl����C���k�઀�\�1vg���6�����fP�)(�~U��I=���Q�9���<�b�k�9�}\�w|@lԭ��M7�Yud��5k�h�\�-5��k��LO�%m�#���+����][�>S���5aw����=B��F^̮=������a�L�'��f��o��J�<i�}�m�Ta�mx��()s����d�p=��O�ȑ2;�ޓ�n����� �6t,���*��$J���*����g�.����-�k��Ͽ�৿\��B�v��H����m�p
���S�l=Sl����ވNrl赾Κ$�%������2����=�:yv�P�F~��F�%�5 I���(��0L�oj�f=�>=�-}��R�i�m5���h�Н�[GR��	Q{�,1G����Cǈ���p �I��n�O5U��6l�9]����s�lW	gt��j6�=��9[�(�v9[2�N~(�얾�Ys_V�K��R6�<�eZ�إef��H��Ze�ӷ`	�/�����5"#""2�$�`�3 %"N14&)H����}[N�W�j[ݵ4V3)5${^������
�G���9>c���'xR�<n'��q��

�
���6�s�i21Ѝ7���NF�"J��n���~5;�SD���p����h" ,"Z��E ��}��ύq�eh��<A�;��Y�9�vR��څ�h�D��k���3$�CxUv�J&]׾��^�@�e��C����rJ=\1���xZ������P-�3�����sk4C��H$h�ߏ��������q~��[$�-�a��Z��0֕�-�����
h:�v��J_u"��]qx��WM�=^�#O����e��kOc$̱5���b����@f��=3����YY�O��4��Y̭�Foh^U�eۡ�\ʅ}�L������:�d����S�|)~?�2�:��
7R�˝��ZɗǑ��]6�����ott:�/*�jz�!?ѦȚx~�l���4�ʮ#�
��)i��%ڄ ~|�[�T�m�����y%����}��� �6|%�E�C��
��!{(�/�` �I �x90,��q�T1u��d ���LgU��E��Vcs��8�C=)����'�&Z���$SJ���p�gֺU{Z����k����zN%�1	_b��QS�h J��3p�,HJ��u��R����*�p7?�J��e2N-�P-?gx2F���ɮX(|�ZCb���]q���C��>̬P�*Yo��%�^.Z�g3^+����"�����]T3����Λ�⛇�µ��|�*D�9��pva�:��j�����-���:A5þ01��?�'x�Og�a{���x7�M�C�_�!n_W�ſw��$�oK�Gc�NfY�-'�?��j��ۺ,o=�q� ˮ�qV�5��m6�7������D�|-WY_��.DgFw|va��.��f故	�مU�̂�5���nF����Z�֚����I�w؂�)���=�`hڝ�>�-o������8S4Ê"<}��m���}%�_Gc)��K�`X���~K��
\K��ڽ+n_�۾��G�7���g�z�̦���gPfsrγ��8�W�a�ڀ�䶝ܛ]�ײ:_����H%���R�}��Al@�F�q+r��.��D��w�!D�p��T�@ܾ���_]�ؾ-�V"ھ���g��s<��Ȝ)ޔ]�p+�Í|��������Gc�*����v0��TA봲���gg�����;���[ނ;�c?�BW,��A�G?ޑN�wqq�)����kw��مY_��4��}F��ty�/t����3�1'0�u���3L-N
��_����þ��)��s���U�ݞ]x�|�ЭV�]�j���ʮ�{�7��u#��F����2�����.���.���o�(�N+��-��o1q��}������I��hT��مq��,On�r�s<o��^��ie��Z�
����e�Xu�L�:~B���³���#&�u'�!��c!���I/�֎�F�̢��:íF[�Σ�Z'Ѭ��a`�{3i��篛��W�?�[U̙� �ɐ J�?�.妵�Ɣ�;RK�E��Vw�:�D���.c�l��f�'����i��'���vj�w��X���"fy�j����PPM<��~�o4�}I��X��t$ٙ����'����-JR��n���a��<8n����\ZC�f���o�"߯}4��O��l��1U%��x����m�ʛm��Ӹ��JY��UX%�� |���.�7��o� ���h/�B�<ꭕ}�+�vfs�.�u2�s^���U+{�ε�z��j�s|K+;#\�Y�����|GO��1�r��#�Ͱa&��m�P熽����3Z���HӖ�a������SݫW�OW?�K��O�5�o��8��յn6�M�$��(`�jt�)�f�h��0��X;��ϛ�*iF9i�i0`K�aI^�c8,!HDa�M��?����c��qe�)�ϗ�����J^	�;�����+�y!��Rt��I/d�Q�!�hn�m<Y��f�0��\�5�pQf�G#�+Ѱj6]�SSL�McN0��v�9lQ6��&�������s���4tO+�����=
���|��ψ)�/�$���r��Y�_����A�w��Zٛ]k*�_�瓥JK���f��SyV�[�f֝��0�;l6�߂�%��ȏ�;�-��>�M��|*��T{�
k�ڭ��;!���X����-�V�:(�/�[[��p|Ρ�C�ВY�4h�	��q��6F�9��� �!cΙ�$I:!�b���@5%H��%I�l��( f\�	�~���nw���U��Y��j�(�ʼ����]=*�(Ecg�s��/~!g�H��Kb,��>++���=��B�<lW��Y���݁�Yb��k�:�2��w6}�}���=�H$" H��Ƣ�5�a�ם���.%U�����.��eL�)1�>b�+�J+��A���\\��ߖhn
�9؋��#�1��+4JtE,������B�M�4�]3�ckѤ��~������p/�`�Ѷn8�? �#[�����$�{�ɳ��!�Hq^ny���>��Q���I�_���+�㟼����FJ����&��G�)�M1��D�zX+d�k�O�KR�N�ӛ�Ϣ���$^��J��#&r�̘��Z��M<Q"Xr{Ҽ̄&+RR/�rOw�aZ݆���0�����8}����L 5�E�Lt���3�T�4u�Oh�~������r���:�H<9p�،�X���7qI;,
aq�N�H1�X+T�B,��GЈ�*XdC^?q��?.��j&y`�g0�����W�>;������w��f���I�S��U�7�v��������t��V	�M(�/�` ]Y ꢘ$N �"���������.�cv�~�CĶ\���*��	�!��
��r�� X���w����T�%C{Y���k[���L)4,7��6�>n3�7esꂶ1p#��Rl9Iib���T�D��s��@���ͨ�a�K�3FQXb��.f�d�
����.��Se
�>ȴT�ԝڊ�[G�v�<�^S&D��d�ԦIhW�Gns6#����'�>E��-t� \$��aPE<E��!'A`+^N��[d9�ŉyzQa���E�A.��$:!�CJ4����CqlՒԉ$yc�z����N7��kw�%Or�x�k�8_�͜�E���Z�>ҦLi��\�.�ͨ�b���h�����߱�#[�K�N�<1��������!�ԭ��L��Ф_p��z<�ˎB>�oʚ�m�9|�V���}�P�����
��T��"؎�,�W4;t�~���S�V5�3���ko�m�Ζv�v=Kr��=\Ӧ��|YS7�f>dn N1S��7eѡ7e������on5B��Q��-�QC(�8#�x!�}Կ�:�o�4q;�Ol+��T[u��T���ǃe�i�5<�a��B���: L��@�b㛲c�7e[ qB�ޔ�SP�٬��6���=���8��!N�w�|%��<~�!�x�!�?WbpW�t�4)r��KU#[ ��z����S
��UI��7&8��͚v?�S�M�u���͵�Z�+�l��Z�[ә��5_�}��ͺ$�)t�^G���mmV�Bu�7e_��\�X����H���&�wbi�di��G7#͑�4r�+� .Z1�!��C���Y�Be�r��[UL�9L����[���~��R�kW��UO�$�S=o�~���d�����W���jV���F��5\�&��6Ki��~�kƴ�e���v?c�_�߷+����6n\�m<�97�k�uՓU��$�v3I�%t3�E��O�,C"co�ƐޔE������m��OW�<���D�r��_#(��|�j���%�����l1�
"UhS�l�=��
,`�o	��B ��(*�v���_�l��N����=��k���5G]�Q&PXX�Q��}�v3���E,��4�f��iٛ�2#���QM7�y�Ϝ�HE� R������5\p8��w�⌘�@�.��o�v��g�'�#��'�]W`��PTm�t�h;Q�oj�~��D�ъ��9Td��BE/k���[|͌t$�L<�S|�-(G���T�,,4Q���XN���Ǚ���e���/��z���������� o�0?E8ٽ}	ֶ�c�A#_b�� y"����uʈ� J[h���PC-l�`Q���^ӓf�.�N��ד��~���^�ݜB������J�@�H�����I&�y�$t��+aU~
އ�J|8�����E��n{S�F��)+۽�m,W�$���g��@�fc�5E���8K�,{����gO�{�<q,>�1�ٳg�V�'�!����s}�L=s�M�0۴;��^_^U^���0�VeXF$t��Y��a�D�q���UF%����¥fQ�E�O�n5��a�c�FC#��"B�G����J���P���$�%�Q����10֊��n=�<��� D���g�0��9Q(�ٿ�'�[w��)����[�K"m�&������^�\�^S�]���DS��'V԰˴I�oʪ�7eq(��,�{Sv��)���ę8no_r$'rѱ�;��ݥԸpԄZ��48�k���<OB,�d�*�f����\������|;)$Gx�H�A|��@�x<)�&S?�hЀ\��]�Ijc�����جk�u�g����V�"k�99+�U��$��6�'6k8k��2�Rn�D.:d�<5^��^C9�5�!�����l6���8�I�!����	S�<vdn�� ���4h�`�d�F FT'82��]�²�H�Q@���-�o)����}�'��?�f���G9��͹M����B�<�r�n�8�y�(C��U�g�cG��1�
;�B�d V�p�Aj��);�Á�&��t��`�B4W`�XQR&�~�n��	�=^�5M]�kl=�v�<��ף5&d��֮�U�f����nv5˵|S�̝�r%?r�'�;���ᢿ�$O04���X������x.��k�\oʺ~N�)����s���E�Q��p�L�܀��4/D3�(�P�	?"c����$PDVF ��R'����ԝ��e#[�v3Y�����ȝ�f��l�ʑ��/D�(�K	�UE�`��(YR-f�|/���AUd���V��!��Sǀ>��DK�z��Z�W���͊JW�vsY�����e���c	FD��p1+�-B��&�$�8�k՛����}�H;��)��APDeE$��Ɛ<4 1��Krck8��Z��X2�qȎ�M
��EJX��y���KA��.�O�)<!��_��E�0�q�4gpKoF�o  Bm�YhL��7��E>�sc0�ۓ�@w%�`Z��z���8��7*�PMN��9+h:��'J��6o���]KI|�p�(X@.���k���N��"�,� ���aRK���5eh�G#\���}�hǃOZw�Ѧt`���U��֫4�TL�a y�6ݧ�.�Bi�5�X/�ht�����[���J58OT��hv���p�AjLoxI�14+��-�oΙ��+���h�0*=� y��fF�b�F�ź%d ���+#퉁{�.�&`�1ң}5#�'�⊹ؓ�;���ؔSe�3�T���q����\�F�� �w����3j��d���ۘe�U����1,���'X��S(�/�` �P ꋬL \��
���dD@�$�UC��#ؘTTP]jaAzM�> �˪Nb5!U�[�,�������$��h?�h�$2����,*�n�z}qEٙF]����Dv�Eu�24Y��9\�=���C�!� $�i�u���JhCޏ�c���`�)��Ҽ�D��;���PfA�9`��P`"�����п��;�j�Á�r�v#��X��âx�N���L�.��4v�3�b�3�bm(�P�Ńu��a�8v_R�H*��~o�K�qd)��͉7�$Ԩ��%��.���e��H��_��fh3j&h�)1L� �$T�3&�p� ��LO���� O$�*�2�1FP���#�i	7^�r���x=1w����v_[�v;x����p�#^���H2���nU����r����aQ�$-��Eղ�"����X>V��eO��Բ��j��Q���G��δ��3M�&����C���q��p�L�F�7���`De/�\|��ЉXC�#L{%a�X-V{]ъEI̢y;IcE�	s��A�*�B���3�nm$02�Z'?\�����J�3M�&K�=�-��A��NOP�N6�+��������9Tj��J�Ղ�3�U�_ϴA��Yw�
��j�J����b���6ѽ�	��S���2> �����ty*��¼�Mѯ2c�����0^W�싉���f���=�m�L��O��,j�f�j�3m΀���x��@.c�]��G��%aQj������&��"���4C/
���e0�r8^�wd������ت�tE/��b�wv�]u[����񲻓co#d�d>*��ĽS�/���.yޟ�#I�2r�MH��%�cB0���~B��K���vl]���j�Z%n��z�^2�&������n�5/ӯ���W�P�x��ī2r�)�g�w!PH� �����[�+�|O� �Ļ&�k�����l��d�d���l����p�ﱀ�ʔ!� ���F!�Y�ƻ�!+�(G����Jc��ƫ��c�[�$��-�W㇛x��n8^�h7���r�ZlMc>jI��lT��`�+
KC�^ƫ�w�r��H�]�PLME!�i��M�����������4�?.�2Ml��]ɵ�ܷ�[���n:�_H4O��Ǒb��#�!]
 a,C�DD3�)Kl�`�����V�rF�#^.F�n2��wݨ��e��6��T)�)-M��� K�R��'�I�J�Vi�������ʴ�������5_��]�.�'���J�&i�y�4�]2��i�W�q(��e�[ȃ�M<U 兂v�ڒĖ�#I޸y���x[wC�^��� yB�Og�	<�N���s��ְ���k�/��%�T*uI+��O��-w�E,��7�0�$MD"W�ؽ�@L2`RI�g�� 2�?:��ʒ\_W��v��+W��H��%|�����Aa�{�U�L<�J��w�#Q�ZY��pf�D��ң��>bO�%N��r�0��"��I5Q�&Kvh�`!
s�h1�,���C��-����[�~�����A|�9.*s�3��!�j�x�1��0�M��XB�(����4����L����w���f����uEN~�����ҋ��4K.���{>���E}|�.���alq&��ao�4 $�d�X%�R:*^�P�#Gp���#r����``sc�XϬ'=[7�:���卍
>�2��vH�)"�64Q��^P0�v]%YOu�Q9��
!�l�BX{p���"�Jlw^:c⻐�� !� ~Pp"�.]����0 �`�"$�}! 		�>h��ʢfʢ�����5w�|=��^���K�h���ISʄ2�̦W�5J�P�����f5��!���2H�L�� ��P�&��IANCr���B��As�����ֲ'}���}mݳݞ=�v��ҨG�x�~x�I�Ce<9�~�]@A��w�h(�M#�QLMA!E܉�q74�@S��&�4�kn���
�2����-�y����-��� R�x'����,ĔCDdDDDD$ms�1+��5K9�Tͦ �c��i���-y�"��Cv�1 ��������|ب/�s戂^]擘b6��G�UIh�$E�H�굧$y%�X�K�K�@r� ���*��06"�Ͽ'!�<�#��]�V�K�u����
��H�/Cl]px�|���RT��b��_�2 ͦ�(�#����&x�7�X`� ��������� ��_X��WP]ΘF<\	��<��ʺl�WN' C%�@�qЇ�M��x�I��P@� 4XM�w����4<��ܣS	�@�#���E:��!�>B[���n�$Tz��uo���AH\�]�&��#��	��+��R�P��{���d�$Rb�n܁\t�c� ���(X񡭬�a��E��4���w0�I@ݘ;7F�z��A���Yn�wǒ6LB����,q�E���d~'7/x�63"!��'[�
���l�C��
Rk�o�ӕ�VW�^Mx@
-,�)��Փs�ǸI�'�)�D���F_kP��4�ȼ�:���J��!�F
(�/�` =S ��!N �2��1=_(!�����7���7	���ZVB�u˾٦5r�R�t�ʬ/��3��Z3�+�	�	;��غF�6Dw��[n�R���c��x6=6;~Kţ�e���.���������� ?��Z_��'���%g�'T�gt�p��x� ܴ��i��k{R�צ=�� =o���3��=�m�O�l��қ�8ދŚ/�̻�(��\�:��J��C�[c���f�Z�o�:�8"6��~�����k3��k��t�Y��6y���uRawl�F��c2����^-�l�0�,Θ�����xq���w�$4�HbQ5i�����Z&��k����b���k�]_��U�&og�M����w�;q�p�x-ζ�����S���`4���G�0��N� ]� QEI�=4��-�e� ��.04�`$<�#�$f JC��0�u���%r�S�nz�K8����(&����3��ws}�MC%�ڗpj����p�w�l	��_n&���l%/ة�y��mb��w9�eO��ߊ0Q��tl6���}��[g���;:sFE�n]�(�<7*�G$|�c�a�N��DoT��%���!75uT�/mN's�Mu2�)����zdTڢEhPmF��$�{���ۚڛ����	��4�7p�q��32�
�R�ö������L��.$�c�LN�Rl��rbg�8ˍX��2��R"I�\᠁	��(n8{,A��a:]�~@խ8��dW6���:U禷!���nO3o 0��p"��Ȝ���{P����C���r�?~�2�%` �a[���IS�g�UY��äЛ���kh�۞:y��6���h����~s��F�� \���h��m6eo��Ŵ@�J)6LY��(��79𰑘fJ �DwJH?`����&��zz���t{jۉ=�Ŵî�ŭ�R�B��k9��w����Y`��`��h,Y��_X�]B:aWp��m!P:z�@��y^d����uG,"�FvE@��D���S�VsS����N�~w��kU�P����J~��ݐ1�E����1��㩲�0�t����y�Q��=�;w��u6�\�m{�Z��:!w'r�4s*U����!�\��!GM��)�Y���a�ѿ�1�d�"G��������W�����/�>LJ��{��_ۈ�	��ۜ���r9L�ԝ��>V�,[ɗˢ�bS���f�R�F�/g�֫GbQ�a��b�ig�6ǯ�6���G��ڒ����'���-�|ieEǅ��#��PF��t�$GAL!����m(�j
**,��,�$Ġ��w:%b��;���E���B��G�Mu:���
	�B/?�ge�k�p�`����I�k8e09)���̿J�TQ�c�
$.�K�J4��i���๲���DНn]���t��YD�G$,��Bn��K�k�۪6Wߛ����ݏ�k^�<�ŋ|�*�Zg9ñ�;�&�Y�}�|�b�ĺ��qn:N�O����� �~�!R7�7�paRU5D�HDB)-�`
��œ�|�� 6��+��"2�H? ���G��4����MS�!7��v��;���-W$�#�#'#��rAA3���]©+z�QL7����m�?��Sf����:�@E��>���'�$�UL�oV�K�+���J/"5T%bq�"UV�sH��2JӞ�:������")U��a��;����VS� �CH��Q<^d��b��Rn4�,��8]i�g�UB��$�w��Ns}-M����?�<gY�)�-Qz�v�}	��I�����Eb��#b{��,A�?�y���#����#�4��z9�v�����/�f�C���s�E���8��]�J"��P*����Si����Q^0Y5��X,����3}�-g3a\�&��&��ʲ��1!�mv'l/�J+��툪���������5�tjj�mr"����$�-o������lS���s�2ƛ/3�j�H�#������	؛b��c�R0@CƌF�M�ʪ�(T:��N��z�v-zq��k�V�׮@�u*y�ɖ���-��0�γĲ�ݭܝ���E�6�K''�;B��trH��ڀ���$S�!�IRP�6��2 �b���4�a��` �@>t���s,���Jn��d$@.��)��-U�P�~ތ�b��l��n���Q3E���́!~�Ǳ����F�	~Ae���)f��IDV�' Mx�?Mm�`���^�@��m�f���⚓Ȼc����C3���\��b�%g�͈mB�q�kw�q����G�>�+�"9���aV����<N?�]���h����1�gA�(!R�!QZ;&�)�N�=�*D\����,#F�=���]H$'��ׁ��I1�
�R��G�\�A��Txf�B�<v�:a'���z^Ѯ'��:Z���:Pwv���3��$L�-��<��M$7�N�C��R<gե��Ԋr�o��:Lcaf�@�S�5u�i=���mP?g⩘��ᨪVxo}�Ow�uD���L�H%�Q�����ry i�X�^ʹ�������r��Z��⬠-� �kS�Z�û��8��p$!DUaWtlï���(��Q�c��uA� 0�8����(�t�<[�(�/�` M ��N Z�j0���D�&F#��o, \o'�Af�P\�B,�Y	d�Tcs�Y��)bU��}���]l�kD]�w��ݭh�nIdJ���c-H[�t����k���r楷;0���Z#�ӫU\V�յ�z�-eE5d.'r��D���ñ�`���K;]���z\&T:���%iGT֗��e�5�}�b�s��R쁉/wG��ΨUv�ʊb[ڄT��ăp��Vr�^���>�0�I��|���&T�V3lB����:8akc2������[��(Y�&���x=`m5W3��.c���43slt�z�~H��d�Vٞ�V�X�-���%�z�A�R&��;�����.Vx����p�0��a)�HI� 5���&�S�w��+��������MM���@ ]���L=`0��0�h�*��
�օg[�!��*��<H&�ݼ<��Pd�#�"C��;�r��8�ڥ$����0��)$RI��/��-G��8��A�Λ�e"����3�����n���т9���f/X��f�s�+ҥت�L[������G�b�@���K�43X�3g8F����I�6��+�(����ޯ�5]%�ܚ���;��˞Q���b]f׬���^��r���e^�g�{����������������1�&M�t�8N8h�f�G�k����tV��
amk�c[~+
�ŮY���c^���'�n6�B*΀L 0	ǐ��M�dhP�d�3�'5L�a Q$��
���	�z�t���� )����a��D9�3@!��\�*`�I�%8M�00X��"MG2����Z#��X#I4��z@�����g��]]"]z̅��j�UiG��8�+9�<�;�Ew%R�}i�ݑ��z�x�n��㝠/L�Y��F�֥$*�s�		Up )G����-H�Z�@�#*W��1] �
�֢nI����?>Ze}`4��4�-W �����A���l��"A<!A���Fpe�f��f�QƍG���2%C��Q
&]񡂕��poYa�{����Vr4ǯv�����g\6�<���V�W>�2o_n��{��`���W
1p��7�Uǐ
L�������O�o�<�9��4�8���;ݏ�xܗ.a?2��2����ص�I����kᲩ�����Ĥ��At-�����T�P��75�ٽ��n������t������n�j�h��<[�N[z�5��.��I<ٳ�)#�=1�a����*[�m���\��We:��ػ�a������` I���2���,&�Pg{I�s��(�Q���|�	Cx�*��.D�!�)b�,Ii��#%��F�}η�_C8��r����hZ��N��%y� �7wH�g��H3�<�N��'N8Ԗ� 8H��ox��\��B.��B~4 �����S�I��*I�AS�ѯ�+�n�נ`�Fr���kz#3�f^/]ϝ.�ḲY��e�cO[�5Z�2y�0��mDw#����рQ��آ��a��MRWZc���&j���H�n�%�=Z�ݏx��u��+����ʎH_�+�pF"#��R����%���^\y��8=��u�>ƺ>��7}G��	k�
s+���P�V����C�}��Г%�V��ͭ�8����tZ�Ӂ/{%'�݆�0�����=�&�+9�RC�x8q��4����*+��b7	��;@4FQ�b�mL�[�3�Z��-�VHk˱�mI��fG3htE]~�z+��|S���i�B_���;�B����ݼ\���f���_��������c�I�f�%�L؎.{Z�($q���Dv��[h�JL~��09��9�.t��[�#���FR�	���"�`�lI�=�\ͳ�LO��ɌY[+��\�OY6��"��}<��f�g���	��5JX�������f0��b|%��Р�8A������ň�0a�������N2c4Mg�����N(Ԗ9����(��C2"""�$�1���!3��0

�Z�vT�����Jl�cAǦТ��5}��'��T�"y!�#ѷ<xkPe�|Mo�Ȣ�$�d�ל!=���������[�}(�b��{=5�aOΈ4<$m���5�?�G��`H:�B�z�A��e��T��N[��7	�^� ��#-v)s���h�e���7��
��)ꐛ^7�ˬL��\-�R>H�K��&�>�kt�I�D_B糋K=�P�.��1PB ��\�����p�z���CDM/�&��>u�?�N�X���&|��?�YY	�[o�
�3��mX��V���� ��GMdB��.�t��m'B�"g�!ql�F������s��v�$.|�w&�t�Ҭ]�TH���6193:��΅}�Z���w����&�I�Q�L_��U�����E�d*$��ķI�9�h��;�z1�O�����b#Qq���C+I�+���`d�ɋ�v@���#v�3'++�Y^S(�/�` �; �Z,D`hqҿ�V�c>��7���;~�	��딠K�������֟�Έ	����-Py*���C0�7�հ����)!/7[}�ȻZ켒��LQ�^v�x_F~�㻨�ԣ��Jg�u�{��O��»z�I���#��������y��1����c������;�9��#�L�|`Bn�7��1�x���N�z4>pcі{ٝ{_���0#���MMxW?��a}J�_vg!)���fܪ|r �/�[2r���'��a}�{�=`�q���擭��n#8i`��{&�Iy����
ΰ�o|��<0����w�/ݝ�:�wb��,>}����b���G�e��!&<�O����4�?���)�ϥ��P�\ך.���l�{٭�{���\�1 �`*���~���"���j��'n��
=(6AMV��	&+7�t�+��	8�HP%�6�Յ�nP�m�۲-����[Bsè�톢K9C���A�6��>���q5s�vN� <������6�/��J���D ����$q�������E�H�ziS�G��3/����΃�8���1e�1��҄�6!����/��Wb��a]�&��_��̗�&U��V�ķ��=H0�z�$�Kh����]�K�9��';&�JG˗�e�D���S��w��� \�q��g�������2�Y�¸��8�ZK*P��<���`��u|�]t�^���^�Z��=v������Z���x���F���k���z�;�?�L'sL���gǙ���\	���:濎v��h޲b~�\v��e�B�*e/��e7M)���On����a=���e���� xWSD&a-���;jUM��/kFD��� C1��2$��;3dt���h���5<�l�=Py��C��Ჲ@����t�
��[W��~B!����%��\&(_Qԫʸ�W5p�Ǐ��m�ZN��^5ǏYV޲vR�Rׂrn�3g�?���qz
�;��?����R��I����j#�2��m�*�:�콫���.�ޗ�:S$����Ϝ�<4vU*�|Ϫr��%lJ�u`�w�~I;D<a�N��W;\��|�O��A�+L䲶pzF1z�'��%<Jy�ԉ�.X�H�� �&���ED@�X����D�F15]7ئ�.�~8\{��Q?�
���(���U��z ֽ��+�ȼ���<�.��"��"��V�^cq���^mH/���0&��
�V8����o0u�������1��@_��)ӌm-��Ɍ�)�Z;lkm�_��R��$Icх�0�X� �y�C���X�4(�K"��Жx1��A\޵���Q
�����V�g�Ňz����jT!l{�wl�
J�;�~�芴��d{�ި�z޵�o���'�����>��:���|g\�>�b�-�'ϼ������߽7��c��%�;�Ĩ����)\�A�A=���r�p|�8c�zR�B}�C��x��g���),��#EB��o� ���N���K)L]�c��g�����pV���y5M����f�Ӱ��(k��\\d&'��\�K݇�&}�5Um���w|~�UH��5�ÜXƄ��\ja��}�(K��;����; ����p���:J�2|Q����T�S�5cl�h���n*h�����-1K���60�|����ωM����`"�*G�c�<F́��Q�C<�h=�4�;nl��X#^�u7(��E���I������N=�Wb;a�&����B$�4vwǔ�s��+\�X?v�����H�	�.T�I��U$�b�;�(���WM��(g0䂒2�]�����m��>����y�.�g �MF~n��*1/�ȉ�V��%N�x:����kF��\�B4	���������Iҽ�t�,j(�/�` ; �Y�B`�Mc��B=��K/�~K)Q�g���>�(�h�t����R��y�����9H:H��&�2��[n)S%:���7��>�*�T�d����-�����U�"?�HuZY�o?Z@��~{�@Z�1�3���aL;Wew�C�_9�g�Ϣ`��𽝼.��4���0'�UY�����k���ȿ���ʞX?fY��{�y�(|�G9�o��睂�0K�D���\�=������y$��J6�5�1aWeq��H�������=��fO��|c��,�!c=}{��ʍĨes{�K�R{���3�G�g��9����tS��?�5����]�\�Â�U�ܢ��=�������m_�F��콯�fT�_�{�r�`υ�S9�׼��i����%�����;$$_n�?d�g��7}�w��h_�-�-wi��E_�
�q�ˍ6ߡb_]y���[ ��B�"���u˱�}h��7�1�_Q��ӧ9�4�:!�9rزEB�A���_ZvW�K�޴r���$�0��� �ts2���(�����,�c��N'���ڹ���u^��>/�h�H��")���p��'�����FG��v�:���Ԏ���׬�t��[�S\�ն��=(֩�~����쥻*��H�<�UY�Г^)Չ�,�Gwd�3���#��	�����&ћO\[��gذ�@��U� �:�D�3�-dV�9�$2}B�q��J���~P=8������϶���*�;J�rUJ�UY�m�Np2.u��9�(��6������i��F���l�A@�>TԵ�^���t��Ku��2(V(��k�9����>���S^\]+� tɋ���)�a�,�!Վ?�=`k�S��Y�Z���Ԃ�|j8c��UY����KlR{��O8���RoO9�q|�,��v��y
�9`˾��p��\�S#
�	&�R��_s��*k��n��U�T��_�j�O���Q?�}�?�.�m$���m�����q��|0�/�04zy4	�vǘ?���k��k��-h�������rz0�7�Q4T}�3�I��*O�(
|T�z�?��k�B���ݕP��f�?��$�I��i�����6Iyy��Z���M\��2S�2^~��k��kn�\�?�������t�_l�����=��5�H�N����e��Y�m�r��_�1��,����Y%�&yҋ�������oXGN����K8⁏aH��}�"N^����!Ӱ.{��q���p��@�4"""R�$IcG)�� 㑢ԐI�����A&3�ڐo�^]�b<fb�"���领��u�M�*�d˙ܦ��Q��\���ZgEQ�<R��|%�>�rvۤ�N�;�{%c�6r�-��^�?�Ӵ_�'q�ȓt٥4��?P���3���H�Tpw�<:uƭ#����Y�v�h��5=��(>���:�BŐ������yV�7�=&�j�7c盥� �d���$6��D�R����R�Ŧ��������E%Øq��;�8�Q�ƆӀ4���T����1�	P��&�v�����~�q<f�E�-����&o�G�+�|�2����O��	[!P�$|Tۊڀ	�����z >f 4wzl�TQ9��������+�U�F�����~��w��tym��>͋/Q�Ҽ2X*G�SFY��� �[��m��^�?�:���`r�?t�m%�� m}C�A:̤6}�y<�~`x��K�a,���DY�)���RU�=�;`��_R����c�����i%��܉l�������������5�p�f��sPH��H���>�(��āJ����V���7䉉�3c<����
?<Ȅ��"8P�i�(�/�` 5= :[0CP�Q�x��]��AT��J�h8e�3%l�`�~ۘx芸����eڧ�84�/l��!F��֦Z�-��[�+2-B6�;�A�����	��:�x`�f2�ay�@�Z�:Pa D�<D
H��e
^	;�Jtk�E0�1/6��D�(.��)-�'(=Ժ�
"i���q�����Hhu+��=��p�}���=̏o���WyOt����u��]�3�����Ϸ.)-g��?��d����<�W�Z��u�c����l�3) �]7��H7�ｳ'�^��	��5�箻W��?#w�FK�s\�𽳟��^}A)Z��5����;�F�>�,��u����^��tp{��F��^��[�v��%��5������վ-)'BfFqݳ?�4A!y:NZ���� ��*~��:��΋|��+r�]�#��D�&�����:�sA;FТ�]wz��c�y������%�J<#r\w2��|��(��1��ן�T��+�*�:����\oQ��_vu׍��-O��H���z`d+�E����&1�.����ʀلO� ��9�����ck�7~�9CZ��|�i� o�Y'�=�}E�"R[�ܞ0�{<�DO���ݽf����	�u�~�&&�R��Of/��K�����,f{U�c2 �����8��@��\�5"q��=ȥ���z�f	��+�7���i��OW�{?�I��3L���R��߾���s��J�����G���	���ۋ֫H}{~��zĆ��&��V��M����69�k-8{���]��5���7s���N�Da��'2tn��� ���]3�M����	�ձc�Ⱥ������Uuз��~E��cyy����u�Xw���]�pKK�~23����22����w������&��Hc�k��/��^s���uښ����N:�$/��v֯�5�a竗+L�Z ߹�88�u�%v�u���ʉ��w����kR�>L
�,ԧ�h:pF�� J԰�S݃3���}jB�s�)�2��V`������mCT�R���/F^)�F�UY��T��Etj�m��U��P�E�p(�~p	���x���n$"\�}ӏ��Uz3D��NƄ��a��9!��?���+)�˙@��"ZA���F�2\w�A8>U^Wi��P���ff�?��O�*]jd�.��g��̩[�B?۩Q�*=���B�����L�`�N�z}�I�z��'��_mK R�֥��b�Z/�_�{�'OW�K��K�=\�u+c�=�踳P�{����0��4#��H�$YG)���@	ѕ$I���b�wj�1~�/��93>8 L�%Aa�rjd���Q ���iɒ
({\*�\1�7B�a�M5C�5��P��u�<�P��|�x��.�w?jq��Pۅl�틶����⃞1l9��~�s���gp���2af�]F��������Qӱ)C9NK�+�@���*�1�Yf=��������W���u:J}D��#�{u����>��s���a�^���ͩl��0������z�f��9N�9T%T��^���P��ҵ�=N�p*�x�j��I_�<�^�����Q����l�ӪPRnq���1���ד1=Ncռ<=��St��ݲ��+(A���c��GO\7���C�n��U���6�m�d맽�������&)Z� �����(J�����[�k�{ܺ]Sݷ�
U#ϙU����P��1�̂.��66��$Bݰ�#�oэ��ꡐ/���R��>|��?���LHg�%�����щ�|t��[�i�vV<������)<�TD���h0sF��~:�C~��|��p���������C��8�Z�Xl�� ��L5F�����C�̡������*B'�������(���ΐ���L�Ao���W�5F(�/�` �= �\=P�Ic;zp����T�|���i�%��x0EP��.�n�n=1)=:��5��B�Q�%����rK�9--'��!�Q艇���y�$W��4�fف�Q�^�����{�_��w���K�����ME���E�7"wn�P�#���n#�X2�/�D]�TB�>�M��A��s��X�$��m��#n�eUe=0�h�*� �
VY�Z�0�*�̮-Sh���R),T��*��6K%�,6=�N�R=�8��E���=�Ѯ
+-O�^Z�=�P�ה��w=Nނ՝v�'�M N�-�޼D��E�7�j9���
n�	�C����x�ܼ4��VhZ���<ʖv�T�)��I�׹y#h)i����+��=�?l��潾�� ��<}C��!ҿ��ꮭy1�6����������٦�y�d)���9\�F9���zFu�}�5�So^N����(�]߼|��VGq}Ͱ�j����x���$��7��MT�v�hhh`���Eo7o���8�YK�# vt�({�<��`���u���	�n�,��WX0��B���AUE���e h'���1��pgX��Vw�9J7o^.�����3�]�5������`�{uq��&!$tf+�EƮo�� ��D�D�C~Oiy>�O@�y(HM6��'�O~�*�����B7o����� D�_5�k@�}]��y�������vV��w����;��6�?�m4N��&����E��^F��I7/<h�ZӾ�ܞ�N�����8y��J�Fq����ܓ�Z�W(0-O���i$`͋(o����;,���˞�cX�R�O���Is���fJ��>./r:���e�ğN�S�yQ�3�)d-~o���ɛ;Vz�?�����y�ܸ09���fS��pk�r�6�W�ڊdݜo��Hi��q���^S�@��)��<�X{~~6	�h݆V��EA��	���Y)7�Zc+k�m�gyא��U������O�� �q�^C��A����b��eW��ػ�](z-$$�Z��S���iyf*{w��\� =��>����*�9i׌a2V��L���p��������R`����?3���C�r,4��g��������.'��%�wE�b�KـϛB�2����b��}I��%|o	�n^*V7���d^)�R��peŲ�M��`4F�����L˓Ԥf�ڋ��ֹ�E��zШn4��p�"��H���洩X<[�g/��O�r};`�ս��{����f�[H;Ȑ�Z���4�;����D�$""� II�1G)���D�T�� Iu�)Y��`�o���a>Vr�"��9�g]?w�
��k����&��ON��O���_̎�`xJ�ϋ6ū"? ;��o�1���h1��jC&����Һ��lu�ߝ&�u��E~�F=oP��
�$�>��i�ϸ�����b	S�z�y�&�y�:�bI{|�D�a��N�7{V��x�d�D�JdD�\��T�i�n��;�O~�>��WOm�2	�ǂ%�̦��U�dBnWJA�_9���x�Jr8q�T�8JA��%��j��Z�(ǔ �� ��n;�&��y��A�IM*��A�f�N��"|d�c.D|n"��'2u"j�	�c�`$�&�$��������=ǥ�4�����>=,i,!ZZ�9���m-�豫���#,zWo���LQ�1~���3�y5:��W�Ky�ɫ��gIY�~A�ώ��Y���Z1����`<�8L���3�:X��9ܥ�׸MfͰ���$\�Si�!2�g�i���=f�S�it@V\�zw-�����g�]��O�9���]�_#Ť�U4щJ��*;՞Mk����|��!�!���>��?FxO����^n��^F$���yN�-s#�=��%P~�����6�	J"旒��!�\Ӟw]�X,�+��S2�����BQ�_t�?(�/�` 5 �N|G��Nc�Gϑ�zm�B��7Xr��#�@�§�Am�C)��6,0N��5�,^�����o|��̤��L�^٤L� 8N���H:&�tM-�OF�P���$ms+������2�~2�'�z}x�Σ���.y抪�Ђ��$����4n�B8�-�d���Eb��6�y������j�B�K[�޺��Gzzsy��tW�D����E=e�W2ٷ����%�����P�E�*�\�
���8 �p�Q�-�܃��%bF��kZ���{�{3P:�2r'cE�WT�>�h��G����~�3PB&e�>@+�����ޅX�O{����)<�_z�&�~��l1L��p���������)��k72�}��0"*͢ � ;��JNn(��b�.��L�cO���X�r�B�H9�v'5`D1�D��i'�y C�tM=�X�7�>/��T�kj�h�v+��z�ڇ7�T��*.� ��;jHgEU��tr&��-g� �o�(�R��N)��/�����-S�6L����4p�+L{�m8�����������?�i��͞�lDk�c7"�G9�tb
	`���B�EQ̬Г{6��R�3�@C�{��S���`s�@��j������]�pQ� ��qE�����s��V�����6\��d�Q�E�β,��1p�e����i���ǥ~Z�[¦��s	�QA?�M����QhOdY�A� d�"������ݢ̲xH�7ѳ<�a%������"*�����AWƛf
|�Q�3���0PvAiV�W�ʳ�*Oj�ОU{���r��d9,�{+�������5��:;����,���ɽ���؍�G��/T���	�p
t�īz�g��v`���P�X�=�)��}���7(-�&IF�Ѹ���ʶ��f�ErQ�rӸ��GFƦ��B�����^.����#���nnwWT���Of۝���c ������z+����(f@�&s�0A����lkq�&�5r�pkkK�ff_��ᢃ��3m;�Q�`���Ї� ��KE>�y�l@�Sd(��=��Y{7}����6c�A� ?(��3���\�Ιz3�����3�:�Uu�Uy$��繬�.�޼7y����A���P��,ƘD"D�� i1��(E���q��
DF�����1Y�����L�J�9��8B�:`�nI+,[M��n�[E��y
|iۘ?�o��P�҆��.�bn��g�:��o��T�{ٌ�(�D�x%uix�z �G&�Pm�6�;�eūw��Ƥ�]60k�������� �V�* �@�
;0`O/<����'ީ��[&�ke% S���W�1�g?��X��4��8�� u�p8�W�Q���Z��Ɛ{;qQ��{�?� ҽ���\�R���r4�?�U�}G��H�]Ö����^t������}�p:6�lV=1�oߖS��{���T�m�V������n��C㫭ڿ��M+�3��ۚ>���^�]�2��e6c��4��&hV��y�.)�9rC�	g֓��6���k��+a%��3�V�!�iq������=�ܡU��X�a�<�l��)b�"?0�4�,:�/p7�mB���P!��f�������I��V��lt.�d��v���i��.H��dJPb;��32Om�O��F6v�`�Q ,S|���4CF�?D^��C1�T(�/�` A �l�>@�M�� ���%��)���?���0L^9�Q7zޙd����4舳����HKHбo)�L)l]ovK����K�
�f{��퍺-��ϢiD:��6��#҉
Y$��ޮ�'��̗�t��6]�o.t6{v�*���M�;L�//B?E��|������	��ؐ�*���S�x�lg>ܦ+�y����f��)����i���XV�v���:xh�~���<��4vt@f�{G��v=o�y�zj���
�w$�@g�#�~�}�R���hiפ�]���|���4���!M�����^�(Dq��,�(a�	=z����큁�+�E���j�U�w�t��`��A�3��6]����>t?W`�.����� ��:;�n�J�y��k��i��ӡs���ֿ�����SZc�1.������D	�uD�� f�=6��l�R>Z%!"`�~'�&��t�=)*�ʽ�y;�M���Ѯ{��&�m��b�	>\�E��M
xt!+��-d���׀�zUvw�+���jӵ�ݒ�e���Q>�r#�{�}!�l�G�c?)���BOdwT�l��t��@@a�Og���K9ك��0W/�������n�����^��\��c����˹����Y�Q= i�����X�q��t5�V�WjX�cX�yٜ�/�*b�N���&_���\�𹺧�i�,�� ���_���?G���b�}��^6�a�H{ow5~�x�ʝ���:§�a��_�����ױ{2G��4�q�6r4�{��E�4M 8�a�OAYR���q�]��0
:�Qc��Ϫ`��P!���F�On�4j.�c2��'	��e�F�ߦ�O���绛p�JʘL�_/��|���#�ɡS��Nw����h*�ꕐ�\$��{�>�Lv��`��c��2AX�n2�DOh3��\�^q�,�����"��[)?�*t��j���\�j(v�c�[#�&�wO0���u����D��}p�r�pz2�Ө�\��7j�W��`�9�Bk�G�岟���[����pP������U����pec���|����c�G���0Ew��G��bA��h�]*mE���{�b:W�`������U�p�e�!��٠�r/��d���B�tEg���m���,�W	`��aE**�1Uj	��s8EV$Ӛ:��T�����Tl��������o<j!�Aݞ��㞈vt�D5�:1qO�s\��+�A��w�m�gզ���M׫^���:7�T�%S�>�w���C8~\���2��T�W��wx��ʝB��aB<̼=��<��fM,�U�K���Wo��e3M���'�l��z!e"�ɾ���������$����T0��� ��%��$W裼�C���c쾠����Y���M����{�Et/ҫ. 7��+���<H��=�W=+�y{Į*�w��H��GSi0��X����i �����V�d�S�{�is�)^�fe:쎷�,�u�Pt���9�g��<��D""#I��rQF����crSЌ�HRP��B9��𐫭��Vox��b`EE�+��w�`��[.��'_8Ȏ�� K��C�9�ܘv�t'Ȏ�����i 'ƅ���i����1�F��V���آ�3�T*�I�f+��%���
��'d��$񈻔�s�gk�`���H����y���}����{�H����Qu�>�!�LLس���]gq�����2SER�3����~_��mm�>߯A��m8;���mx�?�)��wp�2B����x�a�P7��h�G��=���	��(�绕������>�u�v3(�`�:�8dn����x����nW���z��&�p�����) J?>�jKqm�����EN�E8��Q�X���`*����?<�b�ٍtM|�M�&�cH�:g%~?L�	� >����M\�V�t��{���������/����6/���� A�L5IqP��O�#v�'�۰P)3aÝ��`
$���$�	�Vh@�,ێ�"\<x�rO���¹���GG������_y]΀�(�/�` �u Z��8=�Q�OV������F���#3�[	ͮ�h��p؂����)��{˪�+��*��)X���Pp@d�WO� Q�)"D:DW��!��CSC9C^ � 0@�O�LH�Ќ7�*HB�H�����S�B۵K�H!����!(B0���#��y`ā��= z�=��D0���ǣ�g�X D��N��Χ��*:�3������4���A�����I�ٴ�a��f]�W�V�T��L�G�D�:�dm&g��L��	1���7�5�je�� X��u�LG��:P�v��Ҫ�
gͲ&�����\
>�S�]�g�?�����{������?�3�f��m.�q!n��c��7P��p���kʷy]�b����ZA]̝����gy�3�ܿ�9��~�᷹���)�W�~c����u�Z�ξ]=���>x
.מ�m�W�8��/��7w����m���@R�~��o� l\�|S}Z��-�m���?�'O�j|�u�������_�#�?^x�����%�2M�6)���
����n|�[^���ٿ�8�4֮<���m���� �����űy]��������}�ݎ�i(��W0�>q$������ŭe��g�n�<�E��R��$ޙ�������c�JT�:Й�>G�|�3���b�%���O!��96�Q;:VBm�M���  �²���������B���뺔[7�q���L�?���f����4�S�3�/)��X9ksdúhC�B8��;!������pDNCE�t8�q,�I����#c�)�P�%�&ak���$kX�Bm��`?�����|]�q�=���ZwA�� A!4����#�QԠG��?�!HNU��{D�q��r"���{I� '�Nx9_~9�Cd ��̝�$1� �)���Z�U�N���A�6�^
�v2)�Q�0�P�L�E8EX9�d��`�(H�hE	��(h&�#%�+�B`����<P�2J(lP@��$�O�N�8a���8�K�&_Mn�T���I����qI�%DK�K�����(�S�@�:	ZS$�T���r$M>|?|�{q{۽{vF�����(rS�R���*��8 "Ddr��!�Y�s�g�w���;��'䂐� �AD1�V@����H	 E@��P�c����]�];K[>v|8�+���۩��ѤXmH/x$��#�F;Ru0�X�c��.t�tjt�Js��X�r����\p p��67�����q�Fb��4�hx�P���&�10�.�+�s�݌|F��)2f�� c�	'W��0�6�����#�Bŋ�7oQܶ������a���6Ͷ�6�6�6+,�X̱����*�!�676lؒ�h�H�צ�AY�3�ƶv�b���Ǌ	+H���~Ԟ`A O*T\U�(Jq����SN$9�u�4�F�[��i]i�ѡ�@cCB��`�|�w�u�ŬԬl�g�eF�l���]e$rHD�U)�RV�-#�q��W\(��l�l���#���Ǻc[cp"L���#�I�8�b�aOa4B@� ��	ؗp�T������k��K��k�K��V������!G�I8q��𵁭�OÔ�+Z|Z\-��:,�(L�)Ƞ ���f�0X^�]e�x\Xp!Ԫ�
��f�]�V�NU*3**��4��*XU�)Q8��jOp���E*K*5*.j*� ($P�T������NNRN[$� $�I��	4�hjrd�����c)l)�R% J:�2(!)�(�� ���HBKRJ
�B_� d!�A�D�C�B�"5y����`���G6��F&�b��4x� ��$3�[�������ع�|t�9����i�bNb�af30W0o�8f/e�2e��L����VFQQ�P�P�P>*��eT��J�$��{�;�9��FVA� g���Zr������ѱx�9�2���06s_���=�1v�sg�Ś�x��O<'����b-1�X+�[�[Bǡ����QB�B���mE��� �z
��"���JZ�	����
�V���09�_�!Éa���p�p����ZXD�+�!l!����������D�I����l�3�^� XL~��C�9���S��`�0���|�|��+��W���&��}w|�m_߭/��{��_?O �q�'<AxbyJyy�xf=W;�t~;����G:{t�u�uzubu&uu�t~�Lsvr"rr�q��d�����	 ���fz�m�l�����v���u�T���BSL�JI�H�FӀ�s�g�c�L"�r�*2��Y�L��̜�7f)f'��
&�"�80�0C`Va.a�`�/����O.�\�]�]r]F]]�\�-ז����~�P����J��"�t�m�"*1T6UU�T�)K)˔������{�s�1(WP�����4�<@y�L��Ĝt�����1�6�5)5i4�3����_�I�DI@�;�9��+$�$;HVII��J�z�x3��^)^%�!�:���.yx��-��H�H�H'�C"�"UD~������)i������.v�t�7�-�$�[]�.Q���1�h�������H�хc	G�U�G�c�4�6n6.6Bi�k��آq���qB�Q�OcM#���q�Q�������8�x�X�1˨eQ��]|�Hd�n�m����8��`�fы"[�S��8E�O�NN�LL��D��-�w�;w >!z�p����*XU$�0R��"��6gJ�,)Y�����g[y�i7��ү�O���=��Zk��{ܣ��m��uV����u�����л~�������o��x�+��偏͕�/��;�������W���3�C=P_{vn�8�~��x����ظ���#y��j/�����@γ��[�\��}�m����#���;냧a������
�r������7p-�76��.����U;�g� ��`?w�{&W�ϳr���=ϵ���B�C.�W�oq��]�kt�o����U��엸nx�,үZa<Q�� ��wz�#�g�UF�����u�ן�:�������������W|k�w����k����=s��[�x���r��:�y��#;��e<R����?������e�19d>P
��?��!�h����o��j3w�(����R�R�R���֤~j�5��Ջj5	��:T�h�b�^�ZN�N��	�h�������vf��l3i���>�/�e�m���T{A;A�mm��U�l��MfٗlHv"ې����]�] ;���6c�`o`[`7���l���Ŕm�i�h��T�ԇ���i
S2S�R�D�=�3��5�u��x����|���:�m-����Z;���;�0��R���R�R���^�R�D�3���eRK�*���MH�H��� �#�A
�t��i�,G�xȒg��B���x���
��zT���T/�	�K�D�/�h�-5�����:�^McIk�����:�mi�4S�4O:&������(�(�Q!�q�i�\�Q�B�}�T�S�Q������2�,Q'Q!��Y�Ut*ڌ�D���4�ih.4z-��r�+υ羳��\; �*�k�<�������mS���7C��᳾nQ�zHM�d�q�eD�,�)~�ȴi'̉�$BoF�X�6f��P�m@���W�!ݖo)���n,�x�SDkĈMjD��A��4��2�}�V�Ű�؆�R��f(�/�` UH ���L0+Ic��W��1�i���m޹jn�01�W� 5�V2��RW��ª��^cTPÇ�P�S��[���q��kdKIvK��� x5�j�@�pp��E��F�����n)d҆��:�AwF�#�ޡ�`4<���:
܍��Z��>�U+�L��!�^���N�V�P'!q,cwK���(�ۨ�m���>lڊ�<`lj`���f��!�>#�������f{d-��x��%�^�-��$ﯚ�/�('٥{�4
���G��A�L&��b���v��O�P�qt��5O}��zp
��4��[��u�]�j���m6B������ثmR�h�w��2%`ւ�,҅����K��N��O��gR�$z,E�������Ї�+�.�/3�,���5w�����\D�L�xeD����u�	�Č"J��5��� �� n�S��썹ĥ�h�*6���`�N��y:������A�Y�ېjp�R}Ӹhu����r��8l��}�g�^��q�XG1���r �d)$W�8�^��`/�x��G�Cu���k�����iE{�e��鴗��fD��0ie4�Yߏ{��d���ĭ��(��lžb�~R3���
����)����ԗ�=4܉hCD��4�d�5�X-��>�?�W�}��d�3�}��6��Q{$�`�O�0k��̲��}�2]g�\D�|�l&��85���0J5��9�j&R�HH/���i��	���*��s�����t4�n����U�7�UZjm�d8����0��)� r첽��r�f]��9�l`2��;����ҹ��c��[g!ygP��Ά#wCm�Mنu�H��`ã�7�c+�h6���(�n-�G�.�jxmwK��Rr���8�;��E���$��)�I�����wt�p���S)�Y�
nC��&g& �6�\�!Ǭ�p
�2�q�rp��LS�5����m��ъ�^�}z�E�u��hք6�A˛�f�f�βG��E$��ս��^���5lP�}�O�Ħ�9��n.�yi�7��c�N��X�B�j>ڛDT7��]�l��,F}�|�>�?>�=>���V7�Z�?�����mA�4�ԝG��A~3�s:��M�iV����A��B�8��#�S�bT7��=��Dr��fk�Eo|��Ƣ��P#/Q��H�Y�bM�Y�Z�����ôi=��@J5����*����|������n����w�
���~�(6�ħ��������Az�R���/:�+m���t�3ʴ����s2� C�٦R��m�C��)�T�6M�Y4�Y�Y���(?դ.B.��\��U(҆t�!��A4)��4K�L�ЯP ��3��*��-L
��SjAS8sQ!��Y�j��M�zy�1E:s��|�D�0s�Jܡ�a����;��>�6kr'!�N:��u p��Y1��bwrȃhh&Ua)z�,N-�[U�H�k�(��&=cw�]��s'�ik���W�Z{f����q ��,�֚r��6|Gx�.�e��d���a�b�f�¢\̳�ζ�쏗���F1�i�L��fE݄����D�4�l�Q�3�����+�3�7o�3��B6F�
<e�����Kj�z�d�1�ƛ)F�ܫ�13���F��H[6���/�:J�L��f����&T4sq�	���HgB�>3��XM�ZwY��~��+��{L�,FK�P�	�L�����%�B�\��؆�Y>3a��(�\�3s1L�.��B1i���P!��bV�ZF��E4݃�=I	M'܈�ke$>�d��'Z��E6A�&A���U#��d*��`A�&T�Ϥ���.�)�i�e�䲀㨑��Ȍ"""A�&�P�QF��z���H �̈dDRF�X�����ā���'�0����!�{���[��B'/�(���M/T�7j��ɟ�����}kl�٣�����y�o�819u�ax���h�/W/�F����o8O�gJ.�&����o�B�,�&����p|��y��[��X�t`|���n���2��-�ܾ=�wō�o�z\~�;�������ry�r$:��J3A�c��k�գ<{�n��kR|n�ײ����дڰ\׭�UVO��S���|'����z�,�1�&;6W5���~�|�'W�㟖��&�͢�7|�%�;R�8S�Ep��-�L��d79�?;ҷ��E8
���F O>�`��4p�����<{d�mo�*{T�9�����h�<�ޤ����ݼ���\���%R���=ҳ���s��c/�k�N�Y��-������rL�MO(�/�` %Q ��!F �*I�8c��J��A �h��$5�9����LA�J@�<�0#�g���җ��"�1â�'����6B��R���QF�r�Z��J)��_{����-�9v�bl��F#K^�1~wc�nn�R~QF�2F)��:Ƹ�yc3��b���[F�F����`$�r������]��� �`�w2����G8�C!�M���l�����ë��;���Vd5xVw�����H�E�X�����(�x�G*��ߢ���1�b��(��L�EZ�X����:��|�ֺM�@��E�uOj}�Y8��:�� �uG�u+�xZJ��ve�Ix�-�l������W�xZ�Q��7�ȩhN�����'�Y^��g}��#�mu��r���-���b�\���zV�c�Τ����.@��`�x�^��f�u�����$4[�E��nr1��]�5�1Y�0�)8Won�ޥ�*����C���~r,���4�j~���M���������r�<�4�c���<G�����?�NQhA$~�e�
=E��ʵ��p�.�W���
�;
]�i"��:&�Yc6��#<09]r����T�ӝlčh�E7j'����vzN�i-�Bk5V_5����E�0����a3�|����ڱbh%ݣs���D����7�����H��z��t>��3�C]�zAh;�PԔ'�4xZ��驀�O4���>=�1p�q{�p�q�7#f���x�����2�̪I�$2�L ��4�f�icʘ�y�GNgN���8Y�N8b��1S�5�N�a��@���/����HڪtT/bE�����a3��PL�k̬|�W��-�6�Cֶ�VRP��E�]����P4K�(�6���N���	�����gd�<�1�GA�8_��/J��}5�RFS�ˑ5�d���ݑ#sܸ�y��e�q��cw�7���,k_���Ŏq;�W����r-~��IYkO��k��ȵ��{w�=�}��Z�Ŗ����OFOʯ&kғ��e���(��W�5y��E�}ѫ��}1F����ZMz^͓�kj���Iϓ^��?o����È���Зx�:<�>p��w`��a9��pv?ǁ���o`"nq7,�k`���0�kX�a>�z&�c��s=���nbx��x��a��nY|�mp�� p���n�v�c�X0v����E�L�i���Z�4G�JKi'���bͶ��b�|�����l�;�cX3��Z��}6��_n����ճy��Y;;�b.g�,��aq�7�`~�ڰn���a���m�ͮY5�f�,��`��v����.��*�,�O��������R�W�?��������i4���\4�fi@��O���!�E�/���!�Q�%b&��c#V��8bx��#vd셱6b`�Ќ��3V6iL��i��Av#�"��E�-��U!3����
2ȶ��P����2ʲ(����Q��#�դ�7��t��:i?��?,�#m��E�7�t�.��tpt:���~����1�5�Ai�n�n���������oG>�������?!"M"l��B�0��p�cB�I���l8�3�̯yg�0w�`60�̨9gO��[B����T~pY^��"�% 8eJ� ���@�&p*w�٪�pYF�j�TU�f�ݠnP���ݠpX\
f� ��]�堼l^^\���+w�F�>pJ	Jy;�l��S�S���V�a���f�UQ��*.��Ճ�iD*�S�[QJ�W3��Sr5��"��M�o�%g[�
���UpY珜�(���(T�UT�[Q�̫�U�kz�N�U�WS����
J-8%��UU��Rp�	�}P�	,wF��U�H��(�Feh3ݥ^4��^}@C�2M��h
�:Q��14���Tv�n���6N=�&��_h&�D�T�&Q,E�(gbL̥���@����g|�]��W�0�#�!
�>��x;�B��_����e@�TJ�zU@P�Kb3�Pt��P.x��5��SE��`�Q[�`'87���x�	�ć��b�/��8�	1����-}W:�O�,�^��]\'�b��Hp �G�����+��w�*8��>3�\�}xѧ���_���zX���#N�&�ꨁ�RFfFD$�$I�@e��l�7�t�l��g�0Y8���ȐP0aQ�b+G'&{�خ�.8�,��,�97=����!Wms���,"TKL� [����p�࿯<*���L��㐀W��� /׆Y�6�Gm�白�o����U�H��F.���c�~z2��I[싰ߕ��b���G��>���@p�N�c��LU��y�0�CF�L��Y����Pzv�jN<].u���q�E@�`O��?�S��1g�g�zATop*	���
���=B��.��|\@��-Hw���6C�Ɗ[.7���RL�S�����o��|��8�%�	�
�N�-�u�zB�E�����,����u$9�l��J�P���Ӡ��
6�E���h<�ЭK�3����i�ź�R����:��b3��!7�tbw������>,�S���}w>�c���߅���M�Y��X�(�/�` �S �H$G ;�pɑ�%!*�{���l	N3��z�;x�1���@���zᆯu	i��H˫xE!k���'6�O��))��I�����qNg:�s�s�7�k^����|��l�ds��/�]�r�e.�[�r~�+�L�:���%�=�	���4���o�]O0w]d��j�*[���=���V[���iW��@��f���me�bd��){����)��&�"sp�P��4�l�|��9xl��|vڼ�L�W5��Cr�{d�=e4%<��\���v�\v�{�=��g���Z�yW���y��2��{�*G�첏�;�A���y�-�(O��+�]v��$�L�/�;Vjʧ�t���:�>�a�����"��P/��V&+��䗡�w3/�zFL��M���鶢�Q�=��K����>�$��_5�M�:$���>3���%o�%�*�j�kBL�`Z�pڕ�r@Њ+O8�xSA0-���4	�����Mf"Ӳ�+��MmA�d�
�M��Ż��(I)8�]g5,1F� ?��`, 즬����~`)p�Dc�C��,���غ��t���eD�P!���G�d3�&ep�ۨ�ڪ���9vC��s�	�`^/�6 KmUK�,1��S�	���^[�9�Xb�g	L"��C2��V	�?�����g+�{�z�⸩x���<G1?1�x~��nn3����}����y�SX�'L�\�r���͵8���:�!c��,���V���T���=��u|cp��[���g���s$p�3Α�&5z��ll���̠�97�;j��'U��`�,J�Uή@��k#��>��oR�j>��y��a��Ns�q�o���΁�Jy�TtT�#���t]�rB�7]~Gׂ.��˻�J��\t#�r-:-���s�Zlhm�g�l�q�w��qև̓�f�3���`���r�Es(�Ds!z�y�ViN�T����Gi��;�Ҝ���<Ieh~�G����k�(e�E~�y�E�X$�_�o��I8���7���Y�dI�y��������X�e�Af�9�� ��\�� �ҁ̑�̍$0s1�d��X�#�B2����H2�J^�6�F�Q	���D�|s3Ϝ;G4��1th?�}�s��=�q���܉�3��I;.-D�Q�(��ƈk╔(���B�Ꮟ(���O(}W��QJ43�ƈ;.8��o��R�D!����	�C��|T�D/�X�$@*@1���'�*�$�|= ۨ6
E)1���ßP��\= �OJ��	� ��I�b�$@/ �(#B��Z;Q�i\�D>��ml�����|_�5-0�DYpYd��kZA	��6q��*x�&���X���gV�����F��Cm#�>�D�+j�\�)xm�zRaܐs��9Qm��QlQX�" �h�i����P�](��/_���q�i��Ư��oM�j��  �F9��62�T�)̒Pt�>$KO@!וX�'�'h|S�)�{@'�Ө6�� ��z@)i��9AJt�w�#.p�*�訨�n]]ݒ�H��n�Z��>�xV���n;g�l�b��u�m���?���wͶ-�ê�2+�ư0�˶.,�maY�V�MaǬ��',�]�/�eM�.[�T�cy��5`���Rkc�v�P��N۴L��3i�V��o"=��4�B�PB:H��@
H�h�B�T���P��G�P8}�;ʄ*�H�Z��Q!�M�h�F�(����JF[PtUAS�1*F�(
z���5��^���%(	�EG�-*�j�,��bQ�L�IrI��W:�dW	9\)���b�X%��>�`�g��+��#���E,���s�+�,�����a�\�m��;����4�f�͢�!yf�,Vְ5�,�a��`���Hփ��e��
�Svl�l��FF�,S�"�ˬ��M�c5y,�M���ZD󖷇vZ��mZC3-ӊ��n����)#RB
�A:H���f�~���) ����|�S9�b=�G��8��P��P�(�Mh��:ZG�B�P'vS7����vB}P:�i4�6�����aT��p͢2��bQF�G􅻴K��Bԅ��JY�I�t��r.ǜE�0�I=��T$	�)R�k��<i�_҄,���a&yAn9,�R�����2X�e��d�a"I$?X+��CrHvp�W�K��r*͎�]���KI����\��R>���c(�q�3�ЄN��|��^�����v暈�Xܚ�nk�8gg8'���|����2��7��\��k��M�1W0��{�JV��`KpGp���k���m��]C=�u g���X[�T�u���5֕N:7�h�6�S��>��n#�(�\Nc����4�S$""IAA��Հ���@�5-�����ے��#񳞀�k�Z���n�yn�g/�5�"[��b���L��L�`��>�q�W�;�u� 	#�/����U���
��w�Y������-DHP[k?(V��K�/�A����f��-٢�b��K|f������c �,��=��L�8	������U�i��1�3NRI��D.�Q�8��.u-DTw���>�4ީ��W�P�)]�����mF L��QH=B=�P� �[�]�f$ˑG���w�v�����B��}�߉K�y����i�mQ��_��uK�^�m	)G�^�+�eY?����$������JPR���~���=jè(�/�` �\ �<.?0�M:8��g�N�1�LA�"�>��%��!\Տ��D�����ѯ�g�U��C)�7��GXsJI�����+�Ԕ�v�ۀt�S�M�3u���~�6"����{T[�n���;�������4���7ۍn���q����Fc���44���H�fA�^A�VA�֢G�G{�Gw�Gs�Ggѣ7P�4v[��^@cG��	hlt��
��v&�}InW�Xf$���v!�͔ۃ�6��^����֓�xr�Nn��mUn��m9�ڏL�G��#S�I�{dj=R;�Ԇ�����o2�ێܮ#����9r[��v��n�6��n#���6�z�t�F�N#]�I�h��3ҵ�M�.��Udj*2��Z�LE�%����T .T�-T�,T ��-��>�ͼ!��KxC��mWy�S��o�K��m�۞��	�p	c��m=�������~�����4�j�A�06�n���1�-���6�>]{�!ԂX� SC�P�� T !l� |x��"��Y"4Z"Lb���%�"��tcJ����W���LJ�j��P"�B�Њa��T���FyD��`8�  Dz�"��"�R��(�B�t�"��!��!݄H/!�Z�	z�l$��Z@�ȋml�����y�m-�YCv{K����g����l ��˳y���,�}zsv�*���?�����YCޛ}�}�k���X9���6����7��[�kv��X5V��f�,�wƒ�w����W�E[�Q�S,��F�G�}b�<&����)�El����m������,���}�)�ă�O��'�B��#`��o�mo�>�K4J{x���6��/�Lox0u��iI0Q��jǱ�h����.��6�6��e�MX�.�M�jsY�V{�j��RV;h�s��j�ڀT�T�TY*����G��T;��څ�6Sj��|R{��{R[Oj�Im;�]'�U�='�夶��&��H�5��F
!O�xBh�B4O���O���6�Kx�U�����O{�փ�yP��N��a�x�ɠ����`P�|�]p��6A! U@�U5���z�B̀B��BE�&R��jF�2j2�1j1�-5h �i�Lg���Jm�L��I��G��E��Q��*}�&�R�ը�f��Z��VT�*��MZH�R��d�^^�[������0�%T��LZJ� �m.m�Y�;ia�Y��lk�u��m�Ķ>b[���vL[��}���fR�U�Z��6C[k�AȂ�
�*hj� �@���49� ̢A�������(7u��:-�Ni�4�Y2�� ܞ�^��[�(��&tz	[sA�6�̂G���=z�j�Y�:;�sv��nǱ������ƺ6cS��!db��Xm$Vۈ�M��bc�����?l�6��}f�s��2�m�nӰ�2�6����.�6���n��m/�m�nw�mv��n���[v��u����`]g���k65�u����`]_��-X�lj
���Z�u�����!��V����ʺv`SSY�l�)�-e���6�j���n�6����v{u}���D�}��r4���B�/�lL2ے̦$��2���^�l�̦��G�Hf���ad6��Ef{��]d�Qf��l0��%��dv/���v�e7𲥼�^v/[��̈́B��t���x`v�fW��`v̮ �#�v��n5���v��7lw�=�vǰ�0l����v���)l7
�]�v;��&��G��h��v��n2�;��@�1�nK����n�nB�{)����Nve7 ��Gv���`d���Evw��F�&��d������A��.�ہ�����x�	�n^7:A$�����n0��
�� ��`w����v���v+��Hl��e���{h�;��4j'���Q'�݈h��v���7����#��d�X���xQ[�F�.z�
�H���`w��n�Q�T�[��<,���F��(7ʭ�rCQn"�RnF����&#��Hn1�{rEs�����+����� ���:�}-þ&����k�5�Z�}-f_�k��}�F_��י��K�u%���|MG��#_ˑ��$D�^Cy��`�v��q,7�}f��,��M�r{Yn���r���\�;��޲�,���Z�\��+7 ��;S�=ʝG���;��܅$7Sr��|�{��{�[Or�In;�]'�U�='��$���&��H�5��Fr��<n3����]�qOy���'An=ȝ��@�4�r�An1��� �	��2F��X�,�\�oY�Ow������MU7��3U��O#�O/��AT� �z�>�GY�Q�x��;�ڎ�F��n��6�:}�m���^���P�i��h���m��������hәdӗdӕ��IR�$��T���$�B�5S�$Y�I֫d�'Y�I�x���d]'Y����d-'��#�������o���ڎl��l��lz�lZ�l�M�n���H�l�u�zM�f#Y�X�y��<�7<�2<�d��1�u	O�O�O�Ou�u��z�{Z��4����Z�j|���KP�%��d=	��UC��;TU�A�&r�
�[��EY�A�y�������#��m:�Z��s�i9��l}�N��������5`k�5T6=U���]@�b�udY��|`"���iv5�z�]�eWc��-���j	v��]meWW��Tv��]m���DW�t��z]m�����qr��M�.��U�j*r��Z�\E~����-ޗ�x_6z������j8���� ���,� �4˴�2��2}�2]���`ao���,l����-�¾���,�*���K�¶DaS�KG�LG)�2}�.MGa�L�ѥ�P��P�[(�Z(l#eڊ2]Ea����$l=��4	M�.J�U$l*�	[��E.]�-m�[:˃��-��FB�p�d�.- �`v��Vc��l6�}�fװ�3lv��f���-l�
���f���l���n��4�O	�����ǩ(�/�` uZ *�h+J`R:�_��I�{D�1l�4��U���t8m�*�#���/�%�T�4��>T VIx�i3�¢��II�����U�v�ݾ��.�v��d�������n3�mv;�no�����n����^��t;I�U��F�������m7�vo��m�yۨ����V��6��M��ͼ�����Ǽm-�v�������m_�t���A'R�HD"�s��,�Cn���Gr����ܞ��E��	�3�}n��(p{
n���Pp{�~�:u>��D���v�l7�:�vW���lj.�z˶�a[k��9l���ۚ�m-�vg��+���v���N���v��l7���`��l�۽��&���lj!۽��o�s���Kڭ��I�:�v��7�tJ�n���45��j4u�v���3��G[s�����Xhw��~@[7����	h�"�m}�v���x�G�{��F�n5^���]��Ѽn��m�u���=�z��x��x��x�ż�b�n-^w�ם����u_�^"�V"�N"�>"�6"�s��,�Cv���G���Lm$�5���v�Z��vaw\��g0�2�zv������/������`��{
v���P�{�~�H�i���V��m���65��0�fSW�CK�C{Y�.��e����yX7kY7�n�a�lú��u��:�f����lj6u�Me��l��͎��)l�	�]¦v���l�6���ɦ�`S'��l�vhV��jYm!�dS�l��"}��.=�.-�.��~@_��e��F^������+���t]��w]7�k#u=���@]G������5�Z�Ƃ���d]��wY7)k#e=���@YG���$��5)t����� k+��s�@<����L�����6���@m`4�?��e�ڠ��	���f��g����`���=a�=!�=��β�_X�+���r������)�Zʮ���S��'�����r7Y��ۃ�f��,w���`����
��@�{gW�,�[�\���Kʭ��Iz�8ʭR|�:�Rl�'D�bʭFOX��it5�}FWw�'�BW�Q���E�$BwPee��2��2�EY�wP�Z��emEY����(k)�zeEY��A��A��A��?�e�DY����(��ue�D�F�Ao�Ak�Ag�Ac�A_�A[�'|@W��V��V���x�m<�ǽ�q���[��.z�h7��6�w���N�NX�[�[�[��[��[��x�aw���}���'�
k#o���.�� ���v$k���W�J�It�LN�v�I�I���|#`�?�(up��A%R�H<"uЈ��!��$7�BrIn�Fr5���䞃:h��EȝO�B�<��>�� wx�+x�*�=WKA�PI@n(�=r'�AH@#L�	�֒I+I�{`7��Y��}���ns�M��	Q���VB��$,�t�	{ΰgQ�fQ������L��$Z	���|B1��.��3��2�s�b���@�-����b{Y8�<�?��?��?���
,���jv��ڀ�`��n�n&�٥h^)��ؚ
�F�N��m�g8{�b���h�H��(�C�H����<�M��<��܄���|Dy�<Q�w{��nzد��z�]���<��H��H��H��H��H�y�5֒=�Lא�g�5�!��$��Ħ��S[J2�B�ل�3�����Iv7I�{I����9Ibk��$6��"�@bcb��y 6�m�qb3!���[	�;�N¡UgWǁL��n$�9C�� �b!6��bG���`�D��	
}B�}���h�|fU�Y6�Y�=��b��X�]��V5�=ڇU�e��a���j"��U=dY���,k���k���^ң]�:��y�F�Q�SjtU��Gá�1mm��2�=���T�z4���B��B�nB��@U?�GQ� �D�wT5�S]�;��3z�4Z�4:�4��4ڈ,ZKΰ�=C2-C�9�l�%__Im(��$��d��u�<���N����H�F��E��������d�
�5d�FB��1T=U_��VPu<�	�^�lV��H���c����5Ѿ6����k.�z˾&����k!���u}����-�n#��^�{�U�n���>�v���rY9#�r>`�l�f����ҶK�W��i���ph��NC�6�l4��R9i6ݶ���&t�>����j �zG��즗�zٮ�������XK��!Yϐ�1�R��̦��S2[JrCI�'��I*ew��Kr����$��A*eS��E2��������l<0�d�&�f��f/a�fw���NB�*��P��Uc�=�J[�l0{̎�۶T�q��D��̒9h��Xm�Ֆb��,����]�5�m�e���D���m-d�X� ������ڛjk�I[c��F�"�F��DJ�!m��j���(��(��(�wT{��nzگ��z��^�2�vO��h[Im*�=%��d��dv�����|��$s��� �)�8;���$kR�������@m<P�|sj3����P[	�;�N¢UH�Ɍ�6[UP��^�� ���$��]f{Z�f,j�E-���Ģ��s����s�Z��ؤؤX�,� \L�K�^)�MQk*�7*攊�����^���@�FQ��2��&�����<�
�y
��	�����D{�=�(�9u�C�z�]u��/O�K���H1'�b>"�lD����b�{�T�J�����$�)�ZJ�N��$Qw�����J��$�Z�l]��)H��$j 5&�=u�Dm�q& `b�����>�g��`���3��9&��i�:[�=MN��MHھ9�G�-^ g�R����>���,��e������]}��|uK�R���D����KK�+p�w_�v	���QK�(�/�` }\ z��-C0�m:���쥃��FO��mю-`��(���O�A�m9������)�V�?����K�Z���L������u�a*��Sry�[x�[�Zw��4����ʳ3����R�k����r���$���s�De,��+e��֭D�(M�H��N���d�t���<%"�ZN�R�D%��J��J�����$*'�!R6���f�Nm�*mf�e6Nf�A�t���4���+{���ƣq:*��*�F�n�q6*���x�G�8Uz�*���'����Ǽ�D��A��?��=<�a�l.Oi�'��S��ɖ�d;yJ�r�Grv���H*='g#�J�ɸ��]%eSI��d�R�,��f�N-w�-�Z�Y��l�L��Kl�f��2K4�%:h�wX���r߰�5,��-�rǰ�\����na����!�� ��������������QVK(�%��[��5��r���g�M��$�e$JtL��r��h<��J���E�Q�M��P-�P��(�k���%:�r_�Z�Q���(J4-z��i�'�rK�#��s 7"�[�.r�����r���jY�rH�����ro����Y@n4P�3P�)��R@-��ZB�|j�����@� 7�2�i9��.�M���i�{��=�;������v�����������QxE�<�����ǽ�+���N�i��xZ�+ZOjK&�ʢ[i�QjY'�$�,zNj�Hr�E�I-�H�8RK8�����"��H��d�T��)�-BrKI�����r��"�g��f[�v�t��*<�&<�Ul*�/��S�'{��;�=	{��-I$��$�Y%쥄���cƻ�~%줄�&�`�	;���%�uj�F�����evi2�t�.ӥ�k7�4]z�.�F���KCQ�KԵ��O�����y��k9���t=%�թ]m��.덮���Kt���O�:豂x��<�]k.o5�c}��y��<��\ǒ��u�d�HM'W�Iֈ�J���Q��ԲF�G�Y�e�5�e�wN`�|�ޙ�"���LYǔ5E���F��FY�Q��P�k�ueEYCѣ��њ}R�j ���ck"�A<��<<wyHsyG=�����R���9�w~$���H3�����siD�h9��J"]%���d��l�߬ЩͶ^b�6�C�١���A���&��&}�&�d��i��hj"M툦nD���B�Ѥ���lt�5:t:�E�^�Bk*�I�VS[�RW�RS�R�y��x�,�1/��!���n���ZcyB=A���yqv�yOr��s+[eҏ��sRh99���3�zJ�6e� ζP�f[�Yn&�%���m]f[���A��� ,*=XTr���`Q���҂E%��(�J(�J�,��E�ɚ2�5�kJ&{J]TJ���DO9��1m�GQ���t��o��E�j�6ښ��m�FQ���N��D���hk(�z��ִ�IQyDe�s��j *�@TNQ)De�P@T>Q�De�;�gg1�5�A�Zr;Knc�8P��)}2�\�k=�Z����5!gc�j��16��yX�:l<��qظ���U�eU{Y�]V5�څU��Ɓ6~e�(l���[�x	��8	o`Uk?��67�6�ƕ4����������Q�k��34.�����P�b�uuF]㠮oP�^�u꺋�梮����5��VA]_Q�?���z�Z�+���!0n���x 0�U0����n`<�z@�o@�n@�CPuP50����f�x0Nt�t��6 ��=�I��H�u�纑��yx�^<����<�<�
���8$���?2�G��d���I�^2�BƵd<KƱd9�Hg;�3+��*�l*��3of��$�M�v���/���}��v3���l7�-�v��n#�6D��n�v���ch7$�;����^����n^�������^gy�&��*�5��=����u��u��B�$�'�nI��$_���Yv˲{)���;f�|ewRv��n�;���"��>v6;��}��6bg+����Mv���vil"���nDg3�����8:;�-��ng�c[�bW�bS�b�y��x�ż�T��'o� O����'g둳���2�)c�Q6����ba7��X�,l6�ϣ��(l#�m��D�(l���Ca���!���@�2;a�a�y�l06���ˋ�;zO�1%y���$�Γ���8��Gv��j�������,d���Β�X��3��'�eЋ�q�-/�嵦�܇@�ߓq=ϓZƲI��>)ɾֳ���kپV��x�'��'��r�'�ׄl�@֔}�)��m6v[�]=�n���5kJ$֔G�)��mv��f�q�mv5��ˮ�����jv�������+���n���Vv�����m6.�ƥl���w��6���/�x�`�l<��?���)XS"��l����>��v����5>����)�t[I��Ԕ.�ni�H}�H}���FԔ��)��v j�8�����C��h�]���2]}�n��>��$zJ%tv:	�]Fg�����"��}F_���8����}���hj4������5}�����*��+��GSO��$h�4��:M-ES����@WWWOW�ۊ��D��!p��M�n���m��n���������q;`�h�6Дr��o��n��Cpup5p�}�6n��ɀ�1`\�ŀq60���k`j)����	<e�K�k�)5x�H���;��~��I/��%��^�yI7�f�y�\���瓇<����d�'�x>y���O����ϔ@<S��yx�;<E��Sx�P^	��v�%��3哷Z������mC���?~e"��qr����*M�Gn��jr��4e�4���%W{�m�'�d �k�r�Q+��_GTHp�d�m���C�m�&�t���t�L(�/�` mI ��� OPڙ���~���j���K@{c5x�\�|��tEA�(�z&��DR�P*�q�$�M����論�@>+P�Ъ���w�����Or�9�I��!g��l�\Y��4����>�m���<�ڹ~��&��6����>��J��I���(�V���RjҶOZyHJ�ApOJ�@B$i�$�s�2��J+�	���<�ex��<�PR����C�v��{H�:*��(�+w�=���Ľq q������pwy��<�c<�_��M�,n(<�	x���pw�u��(d��m����Gv3�k�\�������	�mBq���
���7��3��1��/��{� �ց����X^�1^�/^�,^l(��	x���bw��pQ�V�3ʸOƇ$�d��>j���k��6����4�	�]Bh\
�O�H�2� �B0~��8	0��g �B`�� �'�q	`7 �����x�	�{�-/��ũ�����ŕ��^|���tq0]�K��ş��S��ř���.��ūtq�.N��?�ŝ��Mtq&���MaY梌��q����7� i�d��d�㞌#���0cZ�b[��jN�zŴ�t��������VC%�.�좬i��)��(�\$e�$�}rvO����W�)��-��Ԫ�T��T������:@mI���[H��)�ކ�/�eW��x�k�6��^�6���vX�����u����?��:]��j��k�ո�ZLb-˭�d-����р�3`����ō<��x\���<�u�xN�5���5�k\r-&����a2&{t�1��=�~#�� �#����I��G��E��C��?��=���@����w�[�� ~W �'���o�6�}a���~'����򾳼o*o�'�������^�<�Tx����v��v���L��<��Ã�Fۍ6�����}�龽t�\���۩���}3u�W���J���}S�`c�����mE��������ۉ�{�n�*��B~�w
��A~#��$����[�~g�7�~���"�MDu4�;��o
;�~w�o"��o������ex����PrvDR��*@i�]�t[גk�<Z�Z*��1OGu-��J�]H��R�JR�C9�Q�I,�/��-�I�s��Wg_���z�V9�=J5Q�(Nvb'�uQz=�X���@�6M���G�zuSiz[�W5�S�[e�J��ܺ'��[��@���Ӳ�rQN1Q6�$�Ir�f\$U�'��J&�F�d�sm��W�j�Ҋ��SZ��q#uP�*'Н>��9]K���@$�[:�:��V7����K��T��Ԧ�.�ԫ�h��J��C�lԧ��ڣB��b6ҫ}�S!��MujS2����Q���
yd%��Pj�dl���I�ɚ}��$���$In �HV�~$�4y�Li�3g��.9כ�蒿�c��r��T�*�RuhZk�қ��c-]rSgf�������0|��R��RrF��t+W�$�i�z�(�L�Y'I/#ɨ�j"��$�\��դ�����d[��v�^�+N�2���Gr�E�j�����:�$s�4�r�?R��rf�oTvWݶXUSm��m����4�Lno91�Q�:��9��\�tc1��h{�S��H9����6���Qn��յ�m2/-��4�Y;]e����ˌt��5a1W]�Ec�g�����nˬӖ�Vk�Y,�m3����m�J�n��n]S~��[��k�]���ևѸV�W�v��\�kO�S�N]��T�.�%Tq�����jӭe�嚧�bZ��XCeVj����Q�z�RoѮ�h�F��m��Zf�S?���* 7*�FZS!݁e[k�ԫ���K��O(m��v-iCe�
��F�S!թMg:e�nʵ�"�E��D��+�+�!�>�T%�E҈����=���w�4��3�T���4��3�@����&�-�5�����Z�a[��թ���T�bZ���9�T��-n�3�����I�a�}�%��*��lTfR����"m�J�>Pu�8��N}
�uO��U�W# ��a[s��i�~+u�3�M�:�';I��DI�$Yf$9�O��ɩn��$�3�H DAiA�p�2CD� A�q<�4F�@	&Vm�͍��ʽ���ۖ�/��?aP��9B<F�׀�2�r��%���|�#P�"a�e�\h>ov"����{ԇ^��
k��5k �#�;�UQa��g=V��U'��*�mǩ)LKó�&�$k1O�'��cw��Q1I�*��axYȴ(�����H��F���H�ސ���ȟL�l�����F�tjɌ]��/��~'G�U|5�M�T(�/�` �F *�`G0��B:rM�%ŃƸv��T-
�"�	*)ʮ�U|<�������o�\���K�T��j*���O�,  �w
���i֓z���-�Ɠx�v�N�]'礘�d��Y�eo�b��.�C�p�C��iCư���0�$��weW�0Wr%3�R��Ç(�Є�K���+��98�F`X�0�;�
VA� 9���T��_��_;�&8e&�3x	.A> �
. �P��P�,�Pe%TB(�:y>�{m�c<n`:�cvc7^`@������x�s�u�s��,g���[�Y�Z���L6�Y���X319찭�r���`���T��k�	�`!C0G�'�^`%�� ����9�L�H#��m?q�y��Ѱ���ݶx]ޗ�瑽���xc��~j퉞kI��Sx`O��D�!��u=^	O�G�4x{�ּ��ŋ����<�7��zc��;{a�w��x��c��xf�_xn�xy^�襽�h5�\�f<!�wy�ޓ�^�;ɛ�yT�G[{7�������5=蕽���x+����x����z�8ޔ�t��<;/Л� �=��$�_�qZG�h(C������^�X�o'p��L`Fࣗ�䥕�d {�5�u�Ps�5�[o}��Z�u�8�X7}�#��Fί��H���F:j۶e��r���9=���qi؆ká�w���9n�Ãg���A8���n���qg��qf��õ�/ܘc�`��p\82�����sg�
�ŕ�n
'nqQ82��82�kA0����7�>������u�8�H������w��HpV�NW��@pYp�s�8)����	�n�drL�
&9$:�|]���pT�^�}ڧ ��)�S:}�r*�N0N��D�ge�o���Y�4	��ba�rQ#��Z�
�*V+�R/�B.�R*��-����$$�`EB,��"l�,��B�4�_}[P
Z�(mR8Vҭ�1�R��DJ�k<թ�YH�t�R����
մ�H�v�S�|�xf*S�ԥڹm����˗e�G
�7��o��e�l�Z�%����\3�F�y�\#_�j�-(U:J���J��UP�4W��4�"����U���U�2m�F��^5i�Z��V5i�R5���������ҏ?~���y$�G����#�BY(�iG�ud�#�H�)G�堄���B:r�I:Y4���C��fd�ed9��|�E�I79t�l�E�I69��\�E�I59t�L��Y���hM6=F��O��3�tY���f�L6-F��O�%Y6F����H02�"�H�e�L�d�L��c2�b��09�}��"�b)�Ew�)�i)R���%�Ȥ�d�<ډ\"q%�:,�Ȧ�,s r�\Bl�45��@�����j��S�aZ��h�TU��a�Q�A`���@�����~�RW�*�N;A'x�	6A$$���i/���]؅Rs!R��[H�j��R(� �Qء
s����!���"')"���D�3���3�oD��Q>�ظ{qf0S��]�DL[��F�;]�*� �������`vEOG	{9/g��u�<�K�l�p9��r��ܖ˵���=���8�� \ .G�8�Y.��X��>⎸܈3�l_�+�[9+g��U���Q9�E\�qD��!n�˧ܔ3�A���ܓ3����~8�������59�o��:�cr=�%9�!9��s�v]]�����:�Z�j���ѼPն��y��N��9z�P	��8G��A}ZP�i8
G�V�Z�O���>�ӡ��Om���z��5�<�Ө�T�]�u�4��i��TN��qd4�F�>�Y�~�7-�M���6mS�ٔM�^�5%ZMմ�i�mV��FS4�=F���gz�M���@6S3��J֡˴L�&S2�i.�bzu��)�c��G�)�R��_:�բ]�b5�K��s)���tK��R-�E�h�O�.��Y
d'�D�&�D�V�J��H�}D�����͋hM��Q<�a:���`�K�T��B�F�%t�+�R����=�JDD$IP��$�@i�`�:DJ	�"DH(����	Z��*�Ԉ�Y�Y*T,)�TYC#�{�(��!�%�0�
B�R�i�	4@j��A�5�| ^�G�Ն��eB/|
��$(�p:�Q����]=�EE+����Z�aX��N4J	'��7s�*'&"`h�pU���2;�*���?-�W�|h������*��['�jj�߰c�A�C��A�b[mxdqFX���AH���V��a��'F-���(�/�` �3 
W4Cp�M:k�k����]��a���{��dIt�b����!4?o�kc��<8爸@eF�����Q����)� � �!�Yȅ��A�Fr �f;��?��:������=N��<~������8���8�m�Ƒ���g|ƕ,�2���_��M�}�?�]��ϟ�9�i7��-�3���3��޳��x���x��o�Z�b��p_�=����k����1|}�^��������w}�u�Wo}�k���Z׺�Y�zi�c]����W������uvp/���3�3xi�[]�_��
��:'x���z�u�:�w���i6�}<]�ҥm']��LF
*�l������꒓�H��&����]r�6�ID��$S��4�NG�6md۴�v����k�W䟉>r�{�yej{g%?Y�F-���Q��܁��>�����q�{��|͝l�f.�����{��Z��k��}�,�r����%c9����+o��[��*��&S9��<�S��K���<�y�r(?�?��ɝ�n�&��|ɏN�$�ɑ��#?��ȍ|M�D�l�^�Tġ0ܢ���ڙZ��J���R%��S��,.��y��@�<w+�<O���y�m�����E������!�1e_l�vV���K�PQV�c%�P��326�PQF��hfcc:<vJ�uE=_靑Wg�X#���r)v���H��.F^�I�32�H-W<0��ld��\4�C4�?���D�L�gj%ʔ��DZ
%���Sr���[5�����6��ܟ�4�V���&�D�L)Tԭ���)���N%R�
M�l��zX+5�;�6u��GwO�UDQA��C�P9�U�j�a5C���U�jW�[�B�P)�	UBժY�F�WB}P��A������VU�:U�U���Z�6Q'�D�h=R$zD���Q"�!� R+�=jҒ����i��"�RSD{hm��[B;hm��[@�g�l��{V��Y<{g�,}AӨ�F��I�lܾm��c�̖Y3{f�l�U�k�ͶY7�f�l��[9;g�$5@��ڶY�m���]��~Y0ۂ��9�-u�}+")�(���"DD#1�Pɰ�0�PmHb�5���oτne�+��M!)((H)�QL!��]@c5ɳ!cfddD� )�PXSu���<��^g�t�I0Y��l	?�_OZ�*[�r��h��:�ک�E�;>ݿ�@Oa�(��6I|O�dXa�Yr� �.�ad�t������v��$�����S��n���,�Y8����4���O�OD3AՕ�E]D�ح^5�[�� �J�ݩ���C�b`�l�eS�+7Q���G��3�\����8�\���b��0�� ���m�,gCiB���A��G0�47&*����\��Ά��Q]4��݅���X�T�j3��C9 @Ɲ�ˤlD�ܩ����Z�����h4��+�Ye������5���*�zV��䔡1�U�,�-�+�g��?[|gn�pV��+
N<�z��ݲ^L���Yn��H�\���i3�권�;�V��cZ�L��&!��l��r��|2�G-�.iP34�J��
��
�{m�i�ģ�B=1L�%|Kh��M��,�����,�J[�w��P�YO���v�&b1.?���]WTԈ���٪(�/�` uF ڑ�6@�a8 X|#L�����5��e<#ߛ+���õ�:�(���S��ۖ)����_�+��	<�Q��'n�%^�q��]�a�z��yY�qٖiY�c��[y�S��Ky�E�=����g<����L�J��H~�F^�D>�B�� ��1��36�2��d�1��b�`��^���0�s�kqc�f�+X�A7���
�6\C(F�;0�@H�0UQ�TM�TIuTE5TA�S=�S9uS���y�T�b�]�z�sTAT@�S?�S>��2%�1�ʥZ�ԁ6P�Q�Q�Q��h����hZ�z���uQڢ�EWԀ����(5�Z�$ZV��W�c�o�ǜ+w�	�J\y+{ȯ����W+i嬔�{+a�t���U�JU�*Qe/<���T��Q)*C%�����Sr�M���2/3%^bʻ��K�C��I���RRJ������[��Y��W��[8_�)\����τ�pn�#�ʩ\��p���܃Ky�Cy�^��7�w��������z���Ck�VgUV������ڪ����JWK�TJ�TI�TH}TGmTF]TEMTD=TC-TB5�W1�/��.�+mR&]R%MR$}�)����R�"%�!u�����kR �Q�&\+ѱTmʼ79�/��'9���ȍ�_p^�)x����}˅��l_{�������=�!�w���w\�s�o\�6^�4>�2~�	� &�2� l+E �9�w������Y�b��0��˟ӷ�+i�^�y�.ԅ���=���r�W�
[a�d��P�奬�(؊G!�K�	N;	~�Kh�w�	�0�&��M�	;�'���0��QH
K�)l�4����^UN��b?|`\nIR��`�wXwuM�tL���+z�#��z���]���������\�ux�㹛�9�����9���37�2��d�1��a�_��1����/�@9֯���Cf�w�I��[l�n��b<uQd��Y�,��'ZV�~�������|F>!_��w��}{����LnI)�#y�X�:��|����v?�������x�y8׵p��
>A64�d���*�y�V��_�]˺�=����91��XuD�.�*��S:uݵ4Q�F� ��dH
n�bW�b��K�4I{�EG���Wž��KrI,y%˒,�S�c����w����yx�w8�-��)}�%=�!�������\�uN�s���<����p^���.��,���7���p���8�8ؿ��^��\��Z��=ò+��*��)�r(r'o�&g2&ۙ�`K�dI�dGfdEFdC&�A�?��>��=�c��x|�v,�:��9��r�p��8�����m��k|�-8	�!��	��@�հ�!~ᇉG#b�Wm�c5�bD����
�P�в�-�YOt��,�mf3/1#��c�77q��l�ۺ֛�E�;�f�4�b���?�{`)��5������gv���a׬V�E�J[=�I�VW�h���u�V� 2sC���=�d�ķ�%W2!��K����}`���bm�u����i��UL��^�g�+\c�K�F�TK]���)�^P"-�nmk���G��@(YwT�a�Q�~��m�P�	��Da��d�DIj�$��L�$߲��d I�s�`���gQH���$<F��xz8ؓ�C �7����y�f��\�@������J�T:$�l�#Ǜp��14g���&R�x	i%5UI5v��5J8erf!"3$�<I({^6k���X��l(#$�̖d\�r}�Z��"
�1F��dŲ������X??	�|V���<�'�z7z�&H�;��3lt$�.j1��9t��	��`LD�@DAR��:!��(�H; �+eR��i��*.H{���F��^��=K�O4��gf���9a���wb����RtK��Ny���ÿZ�=z�)���괃��ϧ�¹�����+A`�~i�C����$ԹB�o$¸�"M�c��uþvw�1�����1i�ujmSm������*O(��rI��Co�Ҽu�P��N�/�9z�����ڱ`3M�h�%���%���6��uV���)��K�V-�8�\駣x�x��^�Y�48f!}��_�:^?�Z��#�KK�G��{i&�)Xt���'�'����l4>�l��<�k�������[��~jD����%?�氊j�����X/��^�w�wW��������rxt�8���qH��M�G�<���KF�0��/�d��T(�/�`3�
 6�D5�Ln���<,�â�����J��C���p�c��Z�b>�����,��~�$w
6 3 3 ��U�-�AM���slSK}���=����u�OCTWl�SYQC�1�1�0f�+��4��~m��=���9Ɏ!G~슧�"+��ԯ^G5TP?�4;���֎���ƒZ��^ji��N�J���n<�I�|�&�y���sDb�yn!'�_��z���G�`��[Y���E��lRǟ����#~�P T�@��0��SN7մ�j
W�@� o��k@�P�K\�P��_9�и[�� �(��b�Qш;��M�q?D5�}{� �э�!x06H|Ym$E�RSCC       [remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://c02r0uwmvfly8"
path="res://.godot/imported/Roboto-Bold.ttf-dfb0e5365b2133e02602e9c201c79ad1.fontdata"
         RSCC      ��   �
  a
  �
  \  �
  7  �
  �	  z	  �	  T  �	  �
  �
  �
  �
  p
  �	  �  �
  m
  T
  �	  �  �  �  4  H  X  	  �    .
  �  Y  y    k  �  �    (�/�` X Z�$Q0Z5w8�*H��~�����N`��WH�Q~-HY5��O���
����j����y]����߱���m!U�O��R�&TY2�eb"�?��$e�tQt_&���O���
Yd:F�O����d�Qǥ�����6_6ݥ�τ�W!i�rii$�ɳ��5 �Ӊ(�����#!H#f�"�I���},Y
�P;��wA�>�)4:�������gߌ�Et� EJ�w�ۗ�u�Ѓǎ"����m*;����0���ր_;�0�;�="��7y�39u����M@o�鶽��Ǵ�:.�H�өT��R�.%a��l��T�I��=��J%�����%��ۛ��M�E�RI�0�uj{��Dt��a��a��e69��8|�Q��T���-*���������H��|���m�|�I�I�lr��!�u6���'���7	�\J�̡��D�/l�Ĥ�l��a�M.����M&]&"�<6!��J�	7���񅂗JM�3�/�ɴ�O���(g���3�\J�M>��3�����t�K9|�.�M�K�kw�n�y��*����/�M��M���P�]��8|��&e�e���?�����#�ÙT��������?O�'2���rE�Adir��tr~A/���^98U'�
��;����<��}=d4F�����7���b6�Ar��ɹ6��𪩽h��Wһm��p����t����Eg-z���Fs�
<�#�J��2Eȏ�g1ME�)A��][wӥ���n����n�T�'fCurb�&�ڠ81{c#�71�&f~b���yڟ����9׾��r�egr��Qy���?�������Zf�Go��0pz��v����61��PX��T��m�籫�k�m*8&@ �V�����G6��j�]Q�yA��!"`�Kw�׻a��~"���;@�/)��Fε7�ϔh,�#|�ȆRd��5.���.�z���յ�<���Lg�if"�}@W �N�.�5�k�����zjf82�c��f&�m`����>�r�.��#倱�\��#���^���,�a������챿�>^H����п����0��|�ˣ�~�Ȩ��\VٿϾ���?R����%���!�e�B?L�)9?��>�)L��H&���� Bi
��;3�_�
gh_����=�X��>r�U���x5J��s���e��$�2@��B;!�¼4#�c?Q�DHi���EȉM�m����o6"!��9Z�i�<"��H������FL��y��=�^�抢�5q�ca��TE��x��K�kGh�ոŉ{Y�4f��#��f*���u��V��:u��J�rH�b��Dځ��/z��<t4���v�Z2b刪�R(�rj�at��C;����\��I<0��9�%~�[P%W;v�#J$�+XZ:\�� �p''�i��*#h�z	�v`9� ���^9B���b�1d֧���s��`i�>11� 9���ȹ�G��.t�Z�P�����`�:� B,�aD|�����LUay�"Ӆ��FJ����+'EPT�2�
�a،T�C��b��z�+;�"���Ǒ�/RM�P����w��
DԸW�yA�W�3�#�|�V�K��6�>}2�CCfwq�Cbv�#�i���VCe1���\�K�\�^p�����ujE���L�T�y�F����D�2&���\;G�S��(�cR���2��
��>�aT�i*&j���a�ݼl�z˭Vc��q.{�Q�����`0���&[Nha�xk(���D�f>�Ci�"t��ɕ��l���2�D�l�3*ze���	�A@�����C}b��ۓ'���b���}"���@߇g��{�\�C�s-M�y�Z�H��E��4����A��a�-U�F]0�m*#v�9�̵��EJS��r����O�i-���N�����Y̲qLf�6}Bw�#�ε֟�[p}���Ql�j�"b�f��N����ʭ�~�s�j�_�a%b�_�%�����0��&f�a���Y�tPk�af�N��TE�RLq&�B3Ŗ�D\[2UX�	�lC?Lw�n����5����\+���i�Ze*W����Z�%iw�z��뵏cө�-G���7�8p0oXᄾކɹ�����Ic��cC�yf���������a�v�=��:�T���ؚ�/�E�'���2�mnāzk��[��s�4�62g��h.�W�u�]M��i_��/��������V�<1�"V���4a>�K,�I���u��hY�X]���C�⨑$�4HDFDDD�&m`�*� �9dV��Z��I&� )��c8��B�4qt�C���%:��['_|���P3'��#*�^��#C��]�\�q��=m���hmC�/��h>�:��p�p�e���˷��,dRdb5�JWv�kC�~�o��0t��MeXr��:���V��k�UK�t���mR.,��8d��1B��	D�R8	��;�� fP��6��sC�&��2h3k&�j�(5�u���s��>(��6A� �W�E7��7�a>b��c�42(@�L��$'?W쯰�������u�x�lp�j��:;1f5��	N?%�F��)6���8�
" �u�I����F��B4�*���Fk�EC��c�[C���3*X���ܠ�^U�$Ї� ��S?{�����!U����g7���^S�ڐ��ƚ,��S'��|��E��i5Q �����>�/P���@R�$���G���J'�)��<�۰�b��~�(�/�` �S ��<!N ز�Z^�H��߂�˩Y�m��J�a/�aX8dfKp�
��SM���U�j�aowr���xn\ \=�(��nd���&d�-eJ�Y>���]�&�agU��ùu��~֝���'��ǣ��d,+����ZL�tE��r&&�eJ�(F�dq�X	�i�b"�;���Ξ�������"XY	T��&a<�� H^b"�th����Ą��¥&"�p���:th�V���&��V��b�p��G�O��P���z��֝jCם��p�yXnA�Kp�].��>d1\vu���*��!�����j���,��uV"�'��/o�,�AU	m���w�U��l2%�l#d{H�5;�*2�
�=���3���&�'Ĕ	��X֡������F�)���꿚��N��s��و,;���pݒ�Y(�M�����	�:��n.��!F�p� �ɹ��&:e�� Ç�ν��F�KLCbP84$�-�ҫCqA!�P^.�ah��u����6��h�hUi�	w~������q�O��k�'\кS����~ݩ�w0��}8�yYv������t����{�P��P�B[Ē+�q������w�g�
�s|	���Y>�O"?�C��#�ē�?�X��&@?\��f��e��%&p�(h!�Ԙ!B�-&7b �� t��55��#��$.w��H\I�d��&bPXb"���Ko��_��JWu m@���j��N�Y�eV��X#��;���O�:�ܦ����u�A�� bw�Ҳe=������z ѡ�*�7MP�TTW؄����B��:`� xA��^�
�0Z�h:t(E˦&"�?GY#�6M�j�n���ټ[��p �; sݩ��s��`<��z�����b�+�Z�0�"�;<�ژ�So��X��6[+`X̙��N��櫊�k����4Ǯ��Z�v�[*|Xk�q���[{���ԫ�WC=y�7�+L�?��xݩ؁L/?�sĹ� /��-����S��A��#�i�yp���T����#5����U}� ��!;�M���l"t�����@Wk��!T�����y��%���#�	?�����p1�D$
�iv3�ݲ�W����2`c�XDz(�^�J�f��}��o�wS"2�ss�#K%k�=�q� ґ��{��h��uq"yX~C����E����5���E�NKym���Ϊ�MEg���ʵ�3Z.��Y7���Q�Y[��&�J򧁛�=u�._��4Qf��,:���g��0&v����b����2�����4��P"D�Q�q��\��DήB�+���h7�?b	��l�4o��,�5^��������r{'f��V���ӡ���KK)�3O %���F��/Vk�QH�?���e1��h��T)L���W1�i�n����bx�(����Ze���[
_f��YB|�P��7��K���x���;�o��	ՄV��h�#���p����_���]
��ld�=u~���7��K&�J���O�]�V�;�$םJImހ~n��9�u��ݍ����m=~t1i�y�8u����>�'���2����<Iv��?�\�LѦM ��� !ǂ���v�|(�( �vg��S�ڬ%�5����\�ۑʯ�)/d9�B	3wt&�p�l�n��_[��-�u^ܢ��|)�C� ���������s~�V�ɶ�y����K��_:��$��8�W����b4A|a��tc������[�+��A��Ml�	G����>G^i!��aٖˎB�zdf:S1�炁��4ϗ�=+��̴U�.3��R��r3���ts�6���Ϳy+�g��ϝ�)�6��Fc��֝
UA����g��B%�O Ϯ���Hk��Vg����J���Ar�Evw�������]J�'%V)��QbP6Ps5�p��%���F�<��Q\�_9��7��i�N����<YRĈ��5|�t~.���v�Xc����g�F��B�3\v�\,Z��c���݁��LZ�{�V.��-{-X-O�)<ӓw�<��mUب���	o�bM�6865\��V�Um�h�&���[�<Łw���x�����6s�<��L���1���$b̑%i�`�)�`U5�	NRX��3.J��]�a��[W�a'�XڭV"�0��H���&���#Q���)��v�W��ON��E���x$��1��a�WC���ٓq5���X�RiY.P��k�- ��<hqL*��nQ����<�g����IYz�$�@�F��
��Z�lD����_4�\��E��?n
�e�C��m!�wT��q�H�M�H`�MZx��	JJ؇w��W�b���l6�I��?ԏ!�>�z�5�	�Y�@:	����G��qaG �=��Cx'W��w�?�k��6L�9d	�o�s��:1 E�T����2d� �q�nކ��P5��@c�%\� @�C�Yrd40��xE��q y�A��Q�L��'��u�&�g��d���u�����3�>1������d��?_mqD��5��Y`�b��ZlZ��1S�r������2zA���-�x��6p��ʑ�t���V�&���I ��&�^�s�;T�^�/{�,��\<�,�Q�6<�7O���BM���z��|@��(�/�` �R 
�T O �*��9�y\IJ�(��kClā�e	9T���z��J	��<_������]�u�v|�|���q�rm���&2����2��	r�0[x\q�9��g��qi�l S��X�p��K��mў�^/���|HF�骬sU6��:-�|�Ե)UnuQْ�W�IM"� �J�U��R����k�t��{7N�DA%\��i���*
�4Kr���x��tCC\U��Ou��5!<��p�BOp�^�<0/8�6Z+��ح%�f��6Z-�V^p��l��FP���ϷsO�6��i���8ޏ{fm��3�\��eWesQ����;�yn�,�������/49�b�<�XNn�h��#XkG���J�G8���P���Μ���UX���C���ڿ2�Vu���糹gY��u�=qy�HF)Wea��UY�dD�tU��>p�F�>M]��1��W���ǵiD龃c�#���zB�Sž��+q���,�YE����&ix ��x�d��gC���f��f�rgO�@͆R>�7�i.��^x��WKK`[#
{��n�6^����˹'L#u�2��C�?�{G�r�K���*�؛��ϗ���bm��|-ĺ�at�����}�Z�UBAa!�pE�:����d8��Qd����8.�il��K ���*#���f�|�k���78�����>�c+�
u�.�����k�{P͎�{�<��@����X{���M"J� ^QK�La2��]U5�:TWkѕ|i��^�_�B�a4;�*[V(_���/H,�h�p�(@}M'ԽPW��x�1�=_^�x̵yB��r�9*q5���pd�J���|�}tEsmR��@Y�	��H�wG��H9�f⣈�3l:K|p�I�(�]��ϱ��7����%g�-�7��1��?9S,������4��6ה�E���&�()�(u�C��0.<$VG�U�ƈ}�%��p�Ws�n��r��(��"޾}��>�-JQ�@���2Wee���(�UY��� m���]l�8J�9fu�)���۷���(�N�*K���{�K�ٵy,h��i����0��ـ��浌���R��
X$�8Ӆ�㶳�m�m�{��N����N$�NA��P�G;mTp��ֆC��W�}�m��
}g��=]��I��J�s��^�r�+)+����O�\O��~�r����U�""�bRE�2U[�ě���[���4$$�!�7�P�^"�s ���յ�juDS0ZNw���~�I?�@�AK�"V`a`Z���fi�vb�3J�00,B���V�B�w+�ii�<5L�NWe�!�;���r�������H	���a��=e���'0��xP��1;t��BE9R�HQ*vD��\��zh��-��z��枤N�Ӈ���0��UY�v#��Tť/��?�9�GO@���C�����
���T^���dAnijð��c�yeTJ� !�$��%1T���҃
��i��r��8ڨ�h��l���*lwk��t?��3=��m��@�y��L����\��s�� ��u�7���ً��~Tz�����3x��	�%,��ش����$GYd`L23'��P�C^	C��2����oB���^uUV��*K+�%K��Ϲ;ޝ�r4`y6��e3��߸���
^H��D���2yL�!?e��$�<�y��$�c9��\��� ���s�0,��}ܳO�0�T����hv{r�C#DDC!1H�`.x�{�v���ek�Xӧ���HF4��)t����1�~�]�e�#��>GI4BDd���X��]�ـ� ٢���.+�F�>��3���/�㤛1?�|�:r$I,<>�P?��"��R�/�=�L��EW�hP���'sOlb�qU�ǞA���Q��N�߳�\�\����SH�uE�ǐ-���YB�y8�Ij�a���TQ�J	�i� �I���KL��+;@�B!�GC[�nF�E�s6��H��Uٙq�����e�Ï�-H�c��e�� EbOh0JV��u��!de$ E�˗:�Zkk�����V��
��3
�@FDD$I�� �,�|@�R�؈��Z�@"�*�'�B��:i�����WZ�PyB��� F���k� wg
Ԯ��T��jt{8;})q����Ge'"���`T�~>ܠ:_/��n���}zs��B��5n2D*�e� �Q8P>���L�#�JI?��#Է��溥1%��X��R�Ŝ����)�4�]>uP����/.{���w��B��a�[�9���;+�,�EB,!v,uy�R�A�a�zp��"����h�k"bpTV򏽘�e�4L�0.�C��� 6c�?�����d�L4K��Y-$����
�?*|�-��˸MPL{�M���Ek�1@�����C�_��q-"�Z��,��̴bt[�,�Ƀ�����;�M>h�0zl���z��+�Žr���p�&�-0�.^��'���������Ӎb�d�|Z���
o+�����q�wS� с ��&�護�!--�C-i_���'F�G�-�3=;���Fk�o�aj�	o�]$�>_tH�=C����RNP��I��^�i҅&��5`_�;(�/�` uW ��8#P ����9
��W�H���Rj[��@獻oaƧ��\n�!%2`��!DG/B`����������3ٝ|;�D��G����-�L"i�쨠�7����$Z$�*�"<PX5I�D���4^z��l�y�y���T�\n̩kٮ9�+�<�/�>��4��]?��z�g���Y�q��u� ��� �{���l�������͸�Z��pL?C���o����%o5y�獌Y��Ŭ{s�C��F��z#�����k���Xƾhe?�dܼ@E4@��v�#�p@�/�>`_H�&Ў�	b
D[��/.�qR�ŬK��,*����T���;Z�̶��0���T��!�0âa^�^������.D`�cU+C�
sa�ш�=|��m�^R�U]���6��A$�Y����ukA�L��TF�(�F���ￓG���ΙZPS!�����_z�TʔP�ʘ�?3,z�P���XQAX|s����,�u}�+ӟ�D|�=���pA1��1�_L���(H~z��^���E���ѬLbذ��%�i$�~��DӤ$@�-j�I-���h���������[׷���-����pD1��ʘuK��wOߡ�zX(�r�5|�Xf:|̘:<3^{l�L�d�p�3�-uC���p�aO�)/c)m"ɮمL���
�8���/�ʮ�e�%�<��+�Ϙ1�Ŕ]�&�����w�n�$k2����5��M���i4"Ǹ%��Hd,8��` �
��#$�������P���^���⡗��ԡ�u���eO�Mc�7�����v���<f}̴�׶�k.�oȆ"�kơ�%��u�y����/k��r��1�8[̺6��Q����Wpʚ�ʂ��lKYi��[�ļ6�6�7Mӥ��&����CB�L�A�4�!�Y4�o�`p26K�*Mf6A���V�z��#�f����o������!Ky�Ofnv�'C:��X�F�B" �}�!�U��-�|���[�Ϙu���ơ6�ǟ�4��~β^��|�l�[A2d@`f%��à�S-T���M���(�������+�z�'�ŧP�������B1�
�1�:f]�����1����E���<�uŁ��hp�#8��	_�`���$�	��l�e�:_�2���P��Tm�Lu͙��n�aްg�z�yv$��ų���`�e���7b�"��U�~/e3�M��cD���<4*(5/^�D�cd�е'UG���C�8I����m  9� �y����R��m
�/�3w���D�D�EZ/���FjA��HV�$iJv���$�N~�`����SӺ�3�jkL�Þ]
=��1�IA�A!�+(\�T��B�*�lc�8f��)�hZ���9u��Z].�����̓��,�w(.�|l\�OU��^4՘u�6���{���U�x���i �2��H�D�r^"cB(�J5m�7-�&�����^��=���Y��OU�mab���Q���U�S8R��Tph�	�C�
e2@�5FX��r�f��j/��$�ŢE�L�u����X4��ܳF�+h �*1 ���g�?�id^h�ƴ��Ac�I�R]פ�UW].7�0��T�Cq$.��(��E7Tv��{#�l,sڦ4o�BC�h�t����$h�z�3�����Ń��J�:}C�Q���&�s���SF�I= � QSXP å6^�R��RR;nuō*�pAs�I���8%#N]Zax��'Ө">�6���mC�Զ��?�ڄL6Yjs$Nt��LB.�YW��.����M=9�wF�@
q��ŋ?
(`�(R-d)��n}Ǯ���ѧ}I�.bR�Ǔ]`ƎOBR�� @`��O(�%Þ8%����:��ϩ
���'[+-��	��c�����C #-ExcǍz̚�� �)-�x�E�8j t��f� �f�:����̗V9Hz(�x��uc����ј��R�m����xI�������oE|���S��Gk}h|�zq��4�-È�\��ژu[Z�"�϶�S+Gy|0�jD��_���)�q@���W�Eӟ��GEo�Ѐ�,���KL����D�όk��8\�M���_�]X3��kfR_�kjv�ޡ-����WN��(T�O�o2vy/��7m��Q��e��}'����%Wv.`b��cL�����!A@�Z���E�.U�d=��D	��0++�=`J�ʢX��W�-����cJ	#%Iڀ��@5Rو
Rc����A��1�IC&�F)�7f�f�.�Iψ���,o���|2oP�Ȳ �8-Z�6��P��#����C�HP��M���-+s67�w]��{�?8uM�|�]�%J�܆�wM�����E!k'B&�bDf���y��an\�12.�C��GqA�u�N+���I,.g���9}�Q�a�7Lw[_DY�%驪�c#92��@DO��>|�"���׸KzۗU��~�5�1#W�(VCE���C���O^ߔl`f��x��Q\U�aۧ���e@Y�$�[�T����?�B\���3�F�����$J�$4�a$����s� F8t8`?؎#(wX0�:z��/7 �����.�S��θIO�HErp��ș� �%?hi|��n��V�R��O:�
�Y�_9)���2�U9u�-�� Sj����4��^��%H�ȅY�@���Ꚑ�%7:H�\Ep��?'��������B���))TF��
.��E(�/�` �Z ��$M �+곙�
�NTUU�e�zL&�=�P�	�)Zz6zD�����q�&n�'���7[�sV��]��fk�l�/�t���L).4!A�/�l���M��}~s?蓼GO��a>�,�@K�n��[���$מM�}��)+��,����iR�:��@� �� ���о�7�gȄ�%H1��/U�&X߉6�^˞7�(.;�(&C��g�v_��R^Ɵ �I��H$�ȡ����~����A��pE�6edR�u<u�en

����N`��3�^5�]w7ݭ&G��#^��T�n��I=����V�A7s�7�]��a�U�޽L*��e���I������m��**%ǧ�L�s?�(i��~��|�C��G��v������|gu�Σ�|���.�zD��D��OK�Ǫ� ���W	�2wTZA2A2䉎a�Off% ��S����9cƓ"o�LY"eFוy�ZM�\*�H�xk�uT"��ZP�L�Jdrֈ�7O�޶�W=�m��:��ZNF[�^���۾�g���ݳ7<a&S�e���÷7����Q��8��H����E�r��gw/H�?��*�=hs(N�&�mސx5j�o� �#�$`Yr �R	��P�#ә��`Nlvvk嚰�3cR�j/��T$v�9wo�4b���"Er�  P%6b	m7ߌ4�s�[�&��n �V �(=F�C�*ym�M�dSP��E�0�J�T��n�a'7���/P�����A u�1h��I�v���h��ܡ�����U���q]B}��(��/O}YWM_�M�x�#�u.uڠ}�b
�^��C�~W臘�j�Z��u��H�е{MD.t��{Nr\��WP��L$��j���Q
EqJ��c�� /l�QC�J�/.��	22���q���B��wL��7����G�V��s����3�S%��>�$y�����yGB����0�ʗ��nR	"���~���\2��O`Ë�H/J�fLaQ�"d9�7/1E��� 2V�0��l���6#�z>�)�}2J��|<8W��9_N�ͼ}/���/�z�e�\�_��}~���d�E�� ��X�����/t�Z�>J��K\����&�^�ƢVFY�f�[k9ν��n�]{U�n�Vm�I�;zY�ȵm��H~�����g�*bC�T� >0`������sʐ�T^])������2�ǫMv��-�U%�asi��Ӊ�r��#B�P4i\c=؎����x��ω�\}�x��[��:��3������g,�)�D��O������g�]�]���y����~Bf�5�����l�L��#8����}u�jd4t��!iI�#����^�B��5u�׽m��E�Z����|Y�s�#�Fw��8�e_��	���R#�p�t�I��� �(]�e*�,��0R6�+d;P�Q ���0�3�JY����Y;��ν�����n��M�V���WU]խ��no�ت�Ih���N�d���x��eݖ,}DN�J�؟�5��Hl/�ژ��O?LT��K��OK3Uw��9�"�^��a�����p�	P���b������h&:��%@j �$H-M�>f���Ѡ�3����: ��<��3<db�8I�!������U���F��nU�`5��~P���Ͼ��(f&�: O��$�Lu��램�L�˺hQ�p��Fox�줊�ē��J�ՅE��a#+� ��K"�5�G[���Z7Da@e�U!-�&h�@�CV�Z���o�[S���Ly�U�i�]a)MB*���S
�p'_��QZbTFD���hd�5(��4�2b���5CZ��FV֜��0�qȌ��ÌWE)�_�n�.	p�L[�2,�&^��IK��0�8UP���:�:��	-�Y���W��m8��d�ւ���˶��A����$Qc��ܪ�*n7��R	����I�1s���������V�	��1sq?/套u��~/����)��3�Oy�Ox��IQZ�n(��C+��$=��d"�`33�p9��(f����q������x%���s��|��)�����Jd2��-��`f��Vak,�xUT��^u�Cs��H�{Yw|rja/?�Z׉(-�10&c(���7
(��O}��7z��lK��ܱ!n��x�!����vݭµ�����wUv��6��>?�j��j<;ҳK� �#h��\�Zt R(>KKō�!����@F�|�Al�t����T����!���)Q�bF�/��ܾK.[�p�}���Х��{"MsP8������ul�!��p)L�o,ߦ�*-��ƜCfFDDF$I�6P1f��:�5SE7�/|8Q%��PzR���ܪ�a�E�68,�@�B�n<�����'�8�!�5 @���X4v��_�sx�����BJ!9�,P�Q��L���� =��&0�DUGz֬t���Ĩ�z�)M��D}wBe\���Z�0��3�2���5dd��,RW"��窊�u,��S��SM]��u,BZ����k�a��	�tY�D���X�zy߶����{N~�E�ly�Di������Q�տ��Rx����r������}>�������ֈ�Ӹ������]7�:!l�d��=QQMwG C� ��0��z◀�M��z7/�F���%�Y ���V�+s�r5σt�M��6�n_J��f��S �Y�Z+��n� ��i�L~M"#�:��(Y�Q�zNmQ7.�2�B}=:��3У��	G��Q ����
Jv��r�lp��J1\7�k(\������Y5.@�����: `}�}D)�-�i*��%��x9�"] 8��(�/�` U ʓ�!P �2����hʒ��������L�l�Ɓ&��R��5֫��m˾��\�5o� s�Y���k��rۥ����^���KVn)S	�]ª�"�*[�8:��7U���u(����`p�ڲע�&��笗]���V�j��ǲ>aצ�67^�jm��L�o�w��/�x����� V\r&�bN3�`D��Ԣ�Tf��Pbغ��]P����+H��6=��������/ڢ�]�UM���ϱ��ӧ��E):��qR:¬;�%̺�̺>������ ؟����_���y���RTA�a�@��1Kڨ����dL0��Qz;Kj�!ל���u��1LE"���"`|���J� ��ޛ��r��4N���۵e��7��~�P���~�X �駎�������̺�$��Y��|���~rz<�����p WaL�ǟ1À�����H�g����EBd�RtU�b�cp��+����.��D���O]�$&X4>��=I�F�� ��5���2*?�^��@?f|��~��{���i����MH���8: "�R�(DJ/�!	!F�T=�q��h���Lg^��Z�A)��Q+D1r'F��+N@�hi£'Y[Kb�̆mQ���
qk>yƟ�u���b��	���y����7�$18��$��*������[�:zA���Z���6Tѧ�'m��'���K;a�=�RtU�X)�1c��C"���xD���EE�ee�Ԣ�:�uy��2�Y������<���a8��aC+�p�ac�zzJB�w����MT��Pr}���~~�w�,���9|�>�.}��/��;�����7SĢh��F����7Shf'�h%/���V�W��j�xI�c�.�xi�`e�+K���e��~��u{�����������¡_�����҇Y�sf���q�����2U��&杞z�AQ�~��o�kvį5����-~==m�Eu苾�mQڢ��j"������Y��'΄O��d?e];>O�T��Ue�f]�Ћ�}'�����_�8�J�2�ؤ��6��:4:@5�#Û@q]`Aj�D��%�tf \J8��Ǭ*͒5�m�b���R��-
0 D�9��c��
s�v��eZ?�>ɇ� f]2�¬���C^��r˶1���n��Ԑ�
K�9�x�a�1S�3@om���NҪ0b��)YT�80i�V7�Hj�5r�_3s׾��n��z|�+�C�p�3�]�Ϡ.��I�#�%{Q��I�?���7� R2ll���[�3�r�R�gy�ݐ�����Z��C_"�m6����Z��W���S�HI$��#�@�eg�� <�H�a��0T���K��dB�|��Q�}c�#ǒሔ�(��.:3OC �#CQ���I�W��� 8*"jJM
;x���,w/�A!.�=�M��7�-F���X�S��u�u��(Eq<f̺A8�uq9_������~?��7��v��p�1�EQ��4�X�R�l�ڀj��ުi&+����&|A"�fGO�1��T�`�RɌ%$���&������R�#���O���wvm���'M��S�p�c&�>� wL8c?~�?C��)-���T�r����ɺ��d*JQ����60kW\����/�/������t������f�I�,qQ��L�¢���M#�A�J�9f��U@S�����x�`�����G�Ƨ;��,�	����O3��uPSÄC �фJ���~�F���1_i���/�F�9��0E��D^u��5�@�g���>�@������H�/�,ee,��\e+�3��T�F��A���X��ٌm��7�<�
E2e��z��$9H��e����aF��G�Q��/���i�5Ku�D���ʹPfݜP
�n�K��eP6�$M�.5i�숽:j��M9�[`��:"5%K*IVW��	*6Ej�1I���'�(��z3�6���>�,m����R̺6��Ƿ�νxؘ���s��Y,�9p�ޚ��:�a���	�����������t�23����Μ����\=��dμ���Ttx���6q7�|�B!���H���v�k����~�����'��x��_<�%2l���WOպ%�����$�4#"""""I�6p��*0�b�J��<<���_�
s(H�!������a�CB��0��Y���Q;�/�T��C��"���1��Z�	 ��d��C�'��\��<4/P#+l:GY�v���&LIo�\�94�"T�o/������=��g����,���#_v�>��	��o�u`Xa�Qܩ���I�2��*��7�>�<d�`�1Q��h���?��豉�y���AҜ��I�hp>"�"���!c���mLZ,ɞ����q��V��:�0� TJ��`X�y���U���T�/	�i��Y�B��)������q�����e���ȏd/F���3�.z@d����1"�=5��=�Ja�-O	$�ꂜ�R�I�LW��⸙j�����85CQK����������)]�7�,1���+��s�BD��_�[���ĝ��$����(Be+S�u�b	s��2�9�<0���r���͡�>e�������-��!`�M�x�U'+.x��\�^���KQ=��	���Ȇ��>����(�/�` mY j��$P �*�l��3oN���YՋ �@%�-��R=A�4�?t��ƘX�����g������������}/�RJ�%9Er�ؾ����B3�{�Os�!O�R^�ۉ�l'>�^�� �%b��^w����ψ5�l�s�d��~~7bw?�w?u/�Oz����������d�s#�߅���ʔ��"zJ�P�@:�Hj�4�E(� ��1@��i��v��n�/p����;�=c�감�%�h[3�F�O;�j#āPP�Rą�%RD����M`H��aP�#�T-M��W�'�ɞI'M6c���S:ss���=k(����!���Q7�а���̓
�h@� �j���j���f��B��=]�V^����Z?�^�&�˚6;L��}S���ӗ�����8���1byzr!�$R55Q��vez�����.k�d�=�ؿ!�_8z����r��#J$�(�£�C`{K[!O�L��u��p٥��膰�u.s�y�^v�w��ED���C�ģ��>��hk���g���ˬE��72���Z��ge��X���Y^�r+��V[b���X�cݩ�f�oQ�L�bs�sgy����lB��|�?�P�2�/�DЗ.^����	W�����s��&�/��N�Z`dR2��������w�>M\�ۥZP��K����	��3v�h�n��t��b���-f�����W�sslus,
+�3vƺSeZ��Q~}���!�����X'���2����L�YǤ+_c�����$�R'��jd�����u���ϗ�=y�z�i7�j���ͱ�[<��������/��%O�?YĈAD�LN�UJ�vSi��̴�6�B���=��7��C��J���Û���J&N�$�����9������C�&�/.�g&�����>�O��xL�d�?˂�Y����r�|��dt���#���;�;�{q�l�T�b ~�����!�C%Kz=R�_��̣�.� E��N��I���u����.{��P&k&�4ٌb~��~�_�NJ.qnĘ���z� {��G=�]�{|�>�z��������09�6���+j��i[���g�F��#�{���e�Xg!,���|�#�(G�dZ}���$�8�����[JL���S�����"����͐�d3XY�e=�	a�2�cڜk��O"�1�������jg1f���T-�!�E�rs&~����G���ԩ��݀��
5��T\-U�R�kC���uX���<��N�,Z��֊�[t���#��k�>9��7��*�;)(a4�I�ȸ%�KL�b"�#�.s'���he7[����0Id�u��nQ�톶h�y芢-*gD�y�7!~rs��ͱ8G�߈�'2�7��I#��6�a��Q����6s4h�0N a7��l�]d������Bp��7*�l�Y�=�=^�,KwKs+$�'\U��7%�iӹg�����k��6��ce��cS����������w�	��c#
[p�Z����^���uvR�'�0ڮ�Y��9u�.�&��}'m���}p7@cW&�U�ݳ,�[:�������B�Ƃ�XXTa\�EF@Z��02�J��N��t������3V��L��/����WY0�
��i35]'IF�o?��X2�96o7��ߗ��M����'��D�杅�l�[p�F��:N�L�71�p�w\k�l;1���hb��<���q8�-U�2��#������ W�{y|�w�� ��䒵�HQY`X���(K4��\5&�|Ğ8��0�Ң�	.9E Bǉn8�1�ɓ��\նMՕG
y-�{�;�h����-�]���w����l�gn���n�U{��N�Lσ��~��9��r���Wz��ZD�z��%���,�z�!@1L&�
U0 �UŊ����6O�@����kMn �$�)!���C�Km<^����,y��8`�sϴ�C]H���v����V�w�L�W�_�)��q?�#�l�ɽ�8���L�1�1Fy�ی�hn37��zJM7ǚ(�m����A�#�J�ZO6Ȃ
�	��B%�U<ņ�%�qJ�� ��%9�CRJ/\3�Ȗ��T%�+
WU:Ot`5	]E=�µ��n�Y�V^0�AtE{����$#��*z�j�
��erYC��ei�a�,����~�� �z�C��!s�A�e�"FF�eZ�\���Y!��w��^�2BFtjN!���3Ż����l=��F�����S(Ի������%��m��1����rs���ͱ767��`[?��]қ����=��#XI��Yl�	�稱C̚�I��`"���`�C�I�t@εrF��(&A"^�������QM��q�C��-���>T�E�f�}�R��CG�yNj���'�A���!,��ĕ��RS���rfx�
���ZX9�����5s� 
[��nd|N�\�n[)�R>Dd��{�*g C�� ���o�O���e���zPtG��E$@7�����^w(�tW��G{��R��L�M�^��Ǟ��\��K���6!<�}�x�$n��Z�c/_�Xg�-HPw��B�F���gP�a�T����%��$�,��Q`w�R�h��"����M��[yJ�\�@�q����FK�vL��Zw��"�!n���\�AW�J��	)��PKp\Na�ڶ_"�9))r>2�"�tf#�o����`�4pPW�:b8O=l�q������� .����MfW�N2� tT���/t��O݄�ho�q~z���]�ͷu�����K�Z���j*��	���k�I����ނ�Q���e���Ŀ�V(�/�` �W ��#P �:�j#��f���  ��I�"��{��W�s$�/,?�����	���+̊���B����n��Ɖ�X��n��C�n$��).%N�;a(t�����NA�:��Ȇ
`N����_$�T��U�^�I�4��j�i3mz�#*���r���WE5���$Q��D�j�8�V[)]�������:�d�g�]xed���\u��EO'��=�^�'�C�[Te�-nɅ0@�&FU)�uUzs@�������e,*�Gv��@��-6����wSg8D67v�QP�k�V��.s�.�	�K�w���q2m1��0m���Y����7�+�I��'LHa�c����D�һU]�re�U^ܓU���yO��635������r��yf�#Wlh�s��yY3��AyAم}�n��q�'!������K�r���G���j� �������lɱ(y1 d��F�0���w����q}W`+eLu1
��Fx��k YE�)vEU=cQ���ªO'���e~,�"Tva4�J��O���4�x��x�F{�e(4Y����ӐO4�3�VRX]� ����3]�8��y�;@��I2��@�c �("C�k(R���9���d����~m<�\��_�<�����'K��$9z}m9�P0���3� �����V��"�+q�[�������3�x��<�����ɘ�2&M[mN�CY��`s�ַ��5B�̌H���-��G�^��>¼�p�*_���|���?Yݩ;مw�X�!w����K�w{j��!peMg�>���T�HҠ�b���Ё�����(�B�o�
�-E� T��T B
:l)���#���!0U��U7��Xe]م]ط����ފ�A�:S��Pfm-I�8 nOޠA8��u�q�!��12!Ud)��µ�%�����NJ[4�<��JTz�d����U�=���*{d��X��[q$���~?�34+N�>Q��<CW�)j��&L.D��
_]�j�qs����������db{�����gn�}��i�sQ�L��	j�XL�0B�HT�(!�j��c:����254$Xڥ����di'���qQ�ұb�~�d`��� �ȍ \(Pʸ�L��L*�����[��~���3
}?]��b�]����=2�s���[Ƣ
KADD4�K[_RAZ:���É���N��R�d��� �A��W)�\va_��������_�S�0��������9�,P�i�(eHF8�]�n�Ι(=���$i��
��wz/~�abL8[�\+���C�\�ß.��QCY%��o��8�刎��X�5�����H&��ݞ=~�$��E�#:l���C���72m����O:�	nƼ��K.�MKW�u��	Y�q����Y�;rp�¾h��n�&�s���9�.$�]��iɝ����(���!�Do��z��I]$FO�_�;����rf8CVqK�ec��O�<�M���G�V�]�m����뻦�u(Vu��U�X�.����"ѳb������`����!�"l��EpN�A쫆N� g��u ��/T�������Ƌe�3:�`N���Sz�Cd2�{��}���[�.T�G�/�Ũ�&P����e�d���,�U�Xhn�����E��k��_��r�҅�;t;B�C���%�a�����5)��_][#:TQ���[ڠO�]{
+�b$KA�t�r�q���Z�ɡa0���q}W�OV�8�o >�/�nم7+�0������������H�'08��^�t趓=Ć��sq�)�fLt�3NÜ��e�.4�s|��!X�*�~ƹ���^���p�p�=�R"_]noT�
u���puc�HVu���z�:�$�՞W�g�z� ���19���;��8�.��Ij.��mT��s���%R�` i9�>"��N�Mwm��'�	u���q�="�Ozy)V�؈K�Gf.�f�ϙ�[�نn�f�n�Z.W��mg�G���I�<��Kjw{n�����N(2#J���Xu;QS�Ms��K	�l��C\g5� N�8�p!R(E|�ʥ��U�Ư�*��y���"�u~��>N��g��o#M���hR܌�F*y�Lf.>��������3T+�̝e3���x�,q,x�3�Tm�RG�;U�T��9eR�($��*���]Z}�f����_�T�к��`��Dw3�ݜۓ��Fd;�l��ˉ�n�{� �ΡM:�
8���2���HD
��p"�+�P-S�\�*|��,��L Y4�sW�6Z�����X#s��x��4|m�+X(%��6*�ٝ�<~���8�Q�2���_�0u�#f�!Kʱ�`ڢ���el�H~EE�e8Q�e���k[kŸ�Mtn揯yFL�2KĄ��qx�W�N7���o�Ĩg\�Rmb��WT�����=��иT��&L��>�m����ߊE�g�(�=|�4�9ŀ{{7O6�}Z0_ސE��Q6`��n�fX}hk� � ���𺅰��I��4�^Gՙ$�]��a��:�T�ǫ��TS�v����lxn����<�$Zx8 �G��d?����k��zv�=�H��^E*F�L����8@�S� &,�:}�,n`!�h���L���6��NS��ЅI����6��t��z0�LfJ����ߌ�2��O��,�0�7����r�}2�)墑��)te7�R��y��{P'���ZJ�᪖�+�G�����n�쌜�S5�>//P(�/�` �M Z�O0��2$��ꔒs�3E���$�EB�aѱ�˂s4\�, L�O��}�ėZQe��]� Q����Qy]��s���F��cjfv�)���\���>�Q�>�o��ͤ�.Ӣ�/�޼{�J�^<�)���yR��!�r'w����F�k��/�Y*[��C�ɶ6��%�|9z�lp���dQ=��W�Dq)Cu�g��oT�U1�aV{�ʓ[�h��Y�6%O{��j,��wN��`����&+���*��j���`��OW�0}�+����(�	��%:��p%���;��Zٓ�0��,%OX,%Ϙ�e1̡��i��L��n݇���!G���AܮB`��ت\b����M��F��<u�VJ������<��ew�c���}��ߡFPi�1�Ә'`oaF��=�D.���ҥ%_��!�3V-�̕�Į�94�Ml��P.ߨH�eu̢g���9iį��KnH,J���8S��WJ��%%�YJ�����=iĶZ�fr�g�
�]���c�D�&o�_3d�b/T{�ϔك��4E�((|&Z��Z�͡h�(ڠ��3i���m�5����A>�H;a�L��O���O[>c�՛�#�;9i���w��K��l�/@�^���.	�N0�$
dE�y`ˈ{�H��H
?��M��bѷ<p6$��i{}W��F�z ���65!���D��ŦZG(vd��� ��pV�+C�JH9�ղ���"��O��e��={�\�*+�PY\r2XU��<��Ql>61�FE�#�&L�>\*w	��[�zIiS�])y�|�0�ԅ
�G!�	I�"�U�"-B��r"6(A��!�R_vV����7Z�#,���%`����.7|:�3�Ĝ��fhnh�f�Z3�š:ݑIk�̡�7*J�ZV�,ք��J�^�޽Е>�b5!����_-%�ڎ >]��p+��e��ћ3
��5[���NK���H�P��$��[͛dG�M6d
{H�>��݇L�ytB=�Y,��J݃�ͭ@3-6=#�dE��a���bo�>!�̾�=Ej̓]�2�������1l���gKSW�/��~,x���I/u��j�L{T�J�1̢,��9�G�Ťw=���+W/*���z��+�d_��������OVǟ�<d)y��;:��p+��eӓ��g��6��=xp������e���y�+��a�U��cc�F��2���ܵ\V෦	'�b� ��+M���`_�z��}�Ċ��2���j�,�k� �E��A���i�8Q��U����z�����,���x�7���į���/%ϯL˽���	��<,l@@lK�g @�s1��0���nf�u��@̀��A0�=gz�g��
b|�Rb�C[L�l/j�@��iΐ/�1R��a�q�y	~睬��4���7���/e�P�Lݠ2sF�+�~���2+_�M,�8�\>w*��;H���>�P8�f��H�(S
�+��XV�2H@�{u�9sB�H����b�9P!Ӭ�p%F��^_:L�X�6#<l�T��B�{[O7Y�����]٨�N���j�h ��x�{���u��#�d%&
!��p�
D8 `��|����7��p�F���|Y�,Q�K^��DE-a�ɩ&j�p��'[��F�[��h��M�j�\����tH���9�T|��o�1�I#ݦO��s�)y��,���u8鸥��q��oP��%�8�9iT�7"��"٨*X��K�j3����/Ʀ� ����k�J\�j��%t�����FEc*��<�O�:x�ɢ(j�\�%������
ΚM��T��H?&Ț�$�;��}E���B��7EI�TOb���<�/�l-y���Lk��\�fZ�(hԡ�$�oTtK�K�Ҧ��+��ᩛlx%t"����b�!�@F$I�`�1+�4�S)i�L�Reg;��q��i1�V�g��M?Z�����	�{/������s�a#h����O_�����NA$n�_��)���73�8�S�f>L�NU���h�p̹�����0Z1����i ��1T�n� S����b$|d����V���W7�^?ܣ|�$�$�O.l���zK��Ъ-Y)��nJ:��E� ����	-����	H�S��Ċ�,��a�|IJ��(VH�"�D�ǻ9�<�\��	0�uz���7M��c6���*��7!Xu?;�f�u��`�DCB5K�Xc|�߼#���ٽq���Փ�n�U���}���h%y�r�O���=aQ�*#f	��>�?�����Wkݙa�Q�2}�`�PŪc!:-\]�v��p^�!͐#hz�'h�I�SuFK>��S+e�2jV�}{�6H�<ީ�6�m�n'oS e1<�;�=bŀ��%f�NXtl�w4�lf�SD\�x�\(��������zd�1}�tv_��k�������F�D�(�/�` �K �~`80*qb|���e5��ƻ	0���'�3@U��hA�1��x/X��/[����߽e
���_�{�T��?F7�
.�>��#�K��d�I��4�T��G�65��A��'= L4�3����E���d\��bʒdqq�����uH,���/q{��1d��%�D.�A��ذ�A���+��َiL5��vt�;�1����3�#�w�ә��&>� '0 ����wPᤣ�L��W$�J�ώ�}(5�mPJ��~�k�ٶ�%4]�����m��w�x�<���~��_��1$� g_H;�d�}�G;U����s�r�p4̲�pn��:��D�F����7��7�p�<񕪺����{+����!�}��7�=��5������O��R��#�4u��
_����
�ffcH>���de'Pfw��'�Y�s';W-U�5q�'�� }s�� t�s���
/�Y�;U����H����+U-��������y&��6�BgD�pP�1����EwTX�#���7;�ݱ{W��a/:�A�8�c�EY�ҩ@f�dg�wfY�kkn�-�Dvnav(�[X��;8�dvG6���<�����б�0>�.j�O5�tL��t9u��=�t�dv%���c�M�^o�eW�s�t�J����n6��~5�.����kh�����j�ݛ{�1�vH��=K�8����K�׃c.w/��{/�^��R����z
�@�*��J�b:4��c�B����K�>�[8E��'�{��FW�S����<�(Ӡ�K�x�7SUh�L����M��7�<9��ޜU�|����ɵ�+��]�����"�%[H���^�����^�`z��q+SMm�q��,�5�0ona^��z�z�TC=�i�WJ����1�<���/�����TBP7��n7���������{P����9˗3w��hs	ʫ/_��z�7KG�]��l=+U�R�(���6#~�X^�P11��5[�D��ɮ�5n�<vh��jd3ߌ�8���3a��3�<�i&���K��9�yV���pGx�\���S��PH���jMbǛ��p��{:�:�dv���i��Z�{�ʖ>����F�>��I��9��ҕ*��5��j��doNzt�k��^\�]��X,���!�f���Ykf_��ޣ��'�{���O�S����M�ˆ�{r�p��@�Ҥy\5��z�&������.���P�Sv:���	�d7� Ѥ�QG��i�Icn��g=0���-r����7P���3~��M�/�i��S�.z�	&�O����i̅cH���M��/��4��͇�z1���F7{D��IM��{��mcrw]2�X9�-�J
	೓r$5a�����~�Fŉ J��p�-������3UgK$r���?At2o�h��]�w�X�?�E�b�$ٱm�!��[8zm�ڴ��m[KmSm��6��c���Wd�mK�n�RQs3�޾Ԫ���� `i
?-A�ͤ����Z�ڵ5�ؓ;j`h{��_ޤ%6 "���%�eq��_��eI��� .���mev�ęUY�ʅ�NW������0��_p4�!���\_�����WK��in�{�����nb}6��f����m4����h�{�ܧ���a.w����,��LLl����;�l�_��+UA�?��K�4�$�	IN������(7e�)ue��5]�Ms׵\gWuEW.�XZ�Q��&���^����=෶�,���ǐƙU�l���>ۧ��:K��f�����s��o��\��p�!Ϛ[8��-̉2�����R�� I:�c,���4d�����$�nL�-w}�vk� �m���(���se<+�S���5č�LE-�����h���ڱ)��0�le떬���_	x�g�wS����~kX*��(��!/!�W�*�dϘ�䅰��%"{X��4�k*�Q��8�/�tӁ��q�3r�JI���7���DM��1x������_�N'�$J$��Q���+Z�x�c�D.]J�m�Vʇ[�-����%���X�~�x��,��6�	Š�W�''�CH��@-=A�Q��"UE�S����~�I:��-��kc���)����,h��emGI�`�/_ ���\mi�A�&��"\�D�͕xX��x�rh�WJc�~ |Խ�B���f���P��� ӓ �M�E{܉�g�6��=�b�^ܽɶ��Ǩ�
v������n�ɦaJ'�ll�
	[�G�A0�n��7v7��c]s�"P�D�Ϣ��#lX�Y�9���S,N�V�1�c
@Z�+�V�] ��{
hDo��f����$O���oc!��49�ā5_����U�2\��Ѐ���^��.��$�*���j(�/�` ]L ڂpR@�6��=g��-~��˔΄=���h
�&,X���
�,�}v�)p�mwQ���*����A`xE��)?����R��M�Ȕ���9���R5p�!��把��n�����r �ѻWv�ӎ��'x�$Q�/Gi���&�f�@m�`+;����KeS�wϒ�	����@# aw?��4�s�>�ɓ(\>�}���9b�gL���P%Y���H�|��x+,㝼�{���e]��NwdxgL�/���L1K�)�v���T�=��4i3�#��.��W߻a�\�KS}��)��b�����_� u�(.~�ב(y�'�#��!��&�4�8�!o����Hm���fj_?O�U���{���N�3�`�'���h�\q�lYl���%0��] GH�ދ��0 ����fZ��ͥL�-�O�pD;��I����+ڡ,т'y�DXL&;��!��qk������y� ȕߥ���[��/G9j3˖6Ӗ/͵�z�`�g_g�� J���Q���e޻KD��[�'+Rl?~�R��Q�X�Ȏ=�fT��u@����T:��X�fZ;���4�Li�~@u����ᚫ)9����議P��l-hMTXm'���� ������b�m�����ZE��fE%�������+|�)���H�A��+��JX쌝,{Cq8t�C:%Ow�d�#Ә�d��s�C��r��6S���fʃ�f�����T'�s1�Q�+.�n�4r���e�����l�Fؼ{7�"F�O�^jj
hs1c���O�(�d�X&;[��6�32&��ʖ�!U0cẌ́�%8�I��e��P\Y�(lHIBr�&��$��6JU��z�9�Y��Ԑ"��>̕$0�U�`�SH�r42&���6�m�6�4�Q��m޻OaWJnW�IJQX�I'G����!�������
�U�|`�d���GT��"*�,!1����d0RG�9�ad-����ri3u���6ә-G�i5VSa�La�6S�VS���M�]B�(n�ռ��k�
�d�pDf�m��v)��_�g� �]~��U~�M�@^���%�p�b,Ѐ��5_��S���rh�q��6N���8�Lql�ͦ&��<�C�;�_��5�ʪ��*⥤�1��&<+��3u���Yy������K�I\�_޻U��^������ =@���;,�)���׽@���d,��%j��Xi+���6%���s��^�[��x����]&����I�����H���D!iaY��[�������>�d�0����0}���k��X1R��`i�磯{D�P��ތc[8���T,m��s��sX�u���{Wh��Hz��䤙��D���RRa�&#IanA���;�wIY��'���b�+<A��P��+eC����L�a�����RW�GvLa�cL���8��A�C�N�7�*B�	 �����-������E���`;�� �@+�Xz��B�3R�� tm �h[i��L��,!�a�$г�b�&K$(M�'�������@��@���;OW�#��p��Q��b2K���й;Q�P� ���	�Ҡ�e|#��c��e��?:�Q�5TP�0�r�7r��}��T'>�6|	�c?�ֵ0%�h��{w�����!,(@�JI1�<�+�h�d�`W^A���Ƶ��t�Fci3e�dl��l����{W �{n]��3$;��c䷂E��!?# �>f���0���-�} �ہcO��G��U��'�h�6W�6�����u�fz��V[Ƹ�Sgp��<�G-�-n��[`�(�ty�K��i-ss�4/.��6�o�^�!F��^ �JY1IH���)�F�(�K�1�ۡ��L���x;!��������4�S2"""�$IA�b��{���bN5�$�L=��A�vqF~�a�gW��n+�N��|�xva࿼�����I��]���[r�z6���%ec���h�s@rٽr�������a{dY[ra�:I�]!�w��m��rav�}����z�e*x�^��D1tԂ�Thx̫Zf��pB�yO���(Ì��[�,��\���T���ZW���gՀ3b/T��b�����^���)��q�rGq�2��m�l��`X��G�n�d�F�MY{*z�	D��#����� �������0�:ٟ�=�9��
�l(�֤$�K�\@dѺ,�N0k��噪�!_֣�����Nq)�:��ˌ9D��(�0.UJ�9�OAU(0���	M��r�^��O�!�\�%�L�|8˘�3'���&*��kI\�CC�?9��Ǔ��Jc�`�Q�̇�#I�
j��d�:�)��ov=�����I3� HYe�I۳�)T.��˞�*����_<��C/�������4!�����O�����KN��i��	�=p���(�/�` UZ z�&Q �:��uGS�����f)P&�j�=��6�˛�8�
�Zc%V�]��'�5�$D�+�G��Sh4A:k�[�ׁ�X���>5"e
ILV(40N�C֮^o�/��	�MI���r7=$ߡ��,|o�n���G�������r�)a�#����>��YJ� C��r���C\��t��@��I���r����AB�M�:J����z#����7T�'���|'x�T���?�M}2�㬼��s�mN_�-jZ�೹��gA-hV;�&X��M*(^N����ٴHD�t�D����*�;ϪGO���V�޳C]�ۜ��̢tBX@{)3���e���ӆ[#F�Mg1b���>��+�Sz�_�==
���2yN�6�M�@^�#��q#�t�tS�Hf<�̦|K��4��O�o����x6���mӴҿ���RݯɓY��⥲�M���t���q,��b�q6�M(o� ~�iT>�'֣��x:P���Sr��� c�E	1��Q9�BZ�œ2+ۆ�����ZO7�rC?��kɥ���Fb8��Û�+<k�Z�����c�E[����[T�K�f.��Ѹ������������hT����4�i�������$>'q����Y�q]��62�����gH-hV�Y�J#����v;٤�#T�H
^NWB�hH���"	 i�h�L�Z���P�<I2տ诱��q�aɒ����8p����':��&���Q(��2R�l�P� F#)ȏ,-
������僌Z���ŕʦ֘��1p���[�]�/��۶Dw3ݶ���.^:�?߮�[x���G#ѽ�v��I7%�|~���%�$�J>+9��%y~�K��$8��g[>u�����Y�OԜ���'_ߋى�@1` 5��ţx�'`ͺ�y^y����B]�!�G3fl��q�ڨj]�eS�GYZ����N���#H�-�Z������T�1��koFe�\�xo_��xsP�ϕu�eY���/K�Y�hD�|�{&U�cϪ��2i�+�;]��<���G�Y׺�^Dr��F�;\����p)�l�ˮ%�6��&��2��!�!����f�O�-y��ݷ�m�[y����c�1���m�g�H2��9ȁ��rV��*_T �6����W���
<�~��m)��b���Ǔ&�@��Mg��D�Z��XB �h׸��eHfU!UH�B��,|wAU�j��{iP���U�L=�i$UN�����˾��C�cW�Uf���U�M�W��{�JI��P8dFab�������kF]��ź��0�L0O�,�FN��V鶿8� ��tP�����}�=n���,t�t-GZ��,@�L���l� �>���[^O�����0�5]��oܹ�)�w�g��,|�+�h���JBʤ{-YB�H�f�W^H��ε�����u��*j��Y"���J�6�*��zب�iڌ,�RT�c�v���r���l�����p��r�,|qE��-je��]�ސ�[3�7~�s���Ӂ��``D��@L�ƚ���qӯ1'J��S4p��2 �9}�J�k%4�-�!_(��o�l5�MfF����n;�b�Eވ��3��G>�g�����9��/Б,|����9�� `m2y�=�z��<��rb :^VP��0t���kⅅ��1%r�W��q�cf1,��̜n����,h��H0 �
[�"i��JeXY�CK�e���ê����=��:f23fȢ~-K�Y��*����L���쒒�.�y��L>3�$�\Ϩ)��\�����x�'ߞ����/~�����'}�L��l��?
PE8Y���<�R�W�����8o�+5�.���I�Ř�gh{��h�7;Vv����
�6��Wn׷�Z�K�CЅ��DQ��@դ��K2jf��N_�B�+�L�y����:�Ŏ$�-v$	z;�����D�h�Z�Z���ZlU�F����(PmJRA��~������]���7��<����'�����O_�JD��J|p�X7�*��DC����T6M���ӓ���V�);=3�����!���b9�K�s�^b�Z��9b�.V^R�S��êK�����VW	
������zyBfI��	Kfw��s� ���6�@fY��,�#SA�;�k��,������3>��?~�s���i���@�J�S�h2�8[��<��N�?���O�EIU�	0W��±nJ����7�6��S�Ά��]��i	!%P���83��ӑ���\K²�����m]��2v�!���g��B/�8>������	T�����"8h0W���[w�s���yluS��������㳃�MY� =�633�͔�M���2%_J�t�TQ�ЅW������9����"����$f TdDD$�$�`�)�`5!�b֢IIA
�q�
�K��Mu,�������*�
��*��-�4vq�[ZE(d4C�eBϽG��C��5��EX;NjēFa��J��t������x;�iX���1�T:Ώ��yKeŞ��$�ZOJ���������P�c,	�.�C�!q�U^������J���O�h0�+� ɺ\�ԏ����N2��(R>HU���-�e��iV�k5m�و�,0�YSf&56^��0��K��A!�3�01�%hb���2�y�{��c�gFv;	�OM��&��b�����-���^/�	�Ue~�~�}��B�����ɀo�w�AM�W��R�3!�>$T�d��&���92:�س+����J���{���|�<%�`�*��@r��|���N����`������M(�/�` �L *�xO0��/)���=���Z���}f�fO�Đ'�ܼ��Y�v�ϐ����Ɣ̮-~u���k�xX����Z����[�����U�\�*[�+�>b�Mkt}�r7��.��NTT�����	'�f7%	C��.�ha�ғ�<02��F`�A�`��+�XV�iQ!Ȉ�t��ƛ�&n����؎�����r��Դ�y�\1�4��3[�5e�Ve[�Ve]�S�9;����)�ka7Qʡ��?,� ��>�"Rf��&�x؈��:�)����*I7��BΗ���E�G系��_K�I3ei���}�Y{����ُ37�'����ت�H�gΑ��\��k�*�Wq쎗�H@�������q�&6��[#I0:*���SSl'��y��S
��zz���[���z+z3�s6������iϕ��'�DMl��5�W7�B�zq렀�~o�S���VeϠ��Veo��>e�G�Qe.�9�Ge��F��mժ�JwЀk��(�J���/S��(׹��s*H&�[��γ�K��b]v�˕��pC�� ���˼=�\~˻�_� '!B���M�'�=��Ky�׋�j��eĺ@���r�/����˾4�ϖ���/3e��]	��?ӫI��0~)x5��O�Dd8$�Dj���S�_��zk���Y<;Ę>a�H�V�Z�ü����.�D���*�#��5Y��T\����5���O��!�x�9�2�S*-�����kr�ܪ���cWi��9Ig�BDU���	,L!����#E�>�\�g��̲���Cmڳ�JS�Veqli��i�F�qC���#[�C/�,���3v������#��!]����1l���w�ޝ���\Ϸӭ�D z;[����Ȓ��,֪lL֪��E���<uM���ح����e���K��6Иq����κ�I$����߃�&ͬ)k$�-8�;������yvp{�K��!Fe4�&J=�*��L����#rX�J�L�^���dϛ�X����ώ��i���|��^����G��S� ��G���<���.�b��k���hUV�q }�z���)�s\)E�)9vϱ�p� '�*9��-2
_KS�h������i��1�4ع��KkU���ሹ&x�Y�f�Ā��,�w��T�ϳ3�/S�o�mUՙ�*;3q�P���&��bl�˻�兪�\�,�6��m >� �gz�+P���C]A���G��x/W��p�������Y��.��"�����X	���!��Û�.�<tMo�k����˾&��rM21ݫ(A#E�[!��J�7͋��v0j�m.Of��`�1�Y� �BT�#=����b�XP.��D�>��ٖ��y�t��w�U�]�_x��H�7\f�M��H���a\�y�Co��qs���-�f�iU֦t����_��1�;Շ��3.�8Ț&���e��I��ɜF�'LH�a�'Sjx��p�55KtEy��o6Cqt֬y�fv�l��P~F5�s�P�"��"2��x����**#���'*�*!b0�x5U`3�gMKM\�s�e�#�UY��ui��a��3rj��w��}f)�O�O5��7��Ev�L[��|ۈ����Co�w{��G�&��H���D�1[�5YT;�q\�<�Q��B��{ /ݩ��&�/Y��%G�*�Ѕ�O���2YB@_�F�a'H �z.?"b����;��qlU �ۤC�`�Z��4���J�f����||4Y��v<_O������hO��f��j��✌m9�����g���.��� K�d�(8v�K�Vf<Qz�M���W�����E�?��e��bA��U �AC#(!:�$���,c�I�$q�c�ty�U-���$)dg TZG�� �$�2:]�a��s�LYU7j*�����_ύ�5FvmR���V��a����`}�����$�~��Է\�kx��̗̲���J�N�
)Ấ���;</A��K�/M3��5��k�m'�EB �_��Ҋ2���Guv����R��#���f|����8k��R����
��7H�ll� &_�7�f)��NV�"X�lT@�O�+r?i�"G�#}z8wX>k���Z*Z;%d��G^
�I�D>�,,NU���$A�z�����e�H�vs��!MK�cC>x�e}|�a ��w�{*h�gO�����;��g��S��y���H&i�]�[���/Ȧ���cL(�ܢ��S�U�[�gf7���Ӈ��}F9�;0���5�>%��>^����1�N_J��c� ^��r�h�F��3wXf���[�)!J���:��TõTeΥR�.]�R�Z��!�.S�jw�9>� k4¯�'�K&4�Wr|w>?@5�w=��Z�'j(�/�` %T z�0"N �2���o͈�j����
X")�c���ؕd=2ck�2�ۼ�^g%�=��^a�����1�Q�Yx����Zu��^��L�V�����zZ��bEA�R����3U�=6]��ޗ���}��yVq<i��ֿcf_I��_�ѯ�x�����s��^SpW��1y��J������A�0Y��%�Bm�E�!i]�9=����ٮ�ϛ!98��@�N��m�
�����������dZ�������ē&_a*���d6�"ݐ�7�}o,Wy����O�{�hYg���}����8@�KС�L��Y�1�XH��`E� ��|}SF�Q���væ�CGY�-%�
 �겂����1��:ی�?dS��뵽���G����+�C��I'Ӓ�9n�ϓE\��7��9�}s�\�����+=�G;��?K��%��M&�ۉclA��n����LA�ts���Bw8\���k*��0�3~O�B�~>�)(̾D�������2̾�K�x�-t�Nw����$��Y��W�Q���#�g`s{�h%��������
��1�+�ןo-������Rtu[�����9��|j���J�>?Yl@K� !�sf
Iݪ ��"3�T�����w(��F�P��X��|�\bm�4��t/z��L@^����|D�T�j���Or��eVo�����OA鐒F\��I�x���hN�hI��˖o6)�յ�9��^]l�����Y�� szu���ԉ:�L��b>0'П6Y��8��b�9���2����p`�0l�*�\l���6fE��̾< �D���Q�g	J8:��JBZ:���f��4d�P�]d�r�F_��]��xl*��D�����ڮ�iI���6~�5�7��Xl�u��A�S�fcVZ����YeT������'�f����Ʉ����L�b�{~����_�lb
��?��Wg��eْ�V?�� ~��|����/��&��.v�%e�Z��P��	V�;R�dd�1Z�j����N�#1EQ^�����`5���Vy���Tz��3��;�eL�w`�����o��컦�8���i�ؽc���ݬQc�KO���(�y��4�m'��z���q�ʒ���j�&/�-��((� %L�4��l�ʒ�D�Gbd�͕��=�Gh�T�MEw��Z�D�ո��C}hSQ��T������y��{�3���() �`��^��峬�`�� ��Z����DKg@�^h�Ԭ=��������l������)3?r����{�?O�E���+����L����q�ě�-M�8?}��S�?�1Y�U�@��� �B/4�������r��ǎ�����Pa�f��ɘBخE `��`����o\ݼ�n��v,�����������Ϡs����C���Q��/�LKT��m�/D��F�-3��F<�~�/C=�O &����M��� f�Ĭ�4B�k7�B��EMoa��/2~pRg����gf% ��UR�����-���O[�.�;��\T���rŤL}�p��C�J�t甯.\��d932�ݏ =1�(Q�F�:	��k�mfZJ����jO�\-��Y��8���j̾E(����+L�y|�O�	�����ȴ����m�d ���� �֢���:�L�;kC �S�8"��7S:L�"�**0��������Ca�jtmwH�4�)����$܉8	���&�웤��c�>?����	�a�UB�Ԛ)8���@��>̭8Lsِ��E7�� K.+C�A�����9���s���"�U��
ۤ�r̴���O!���  Ј�Î�u��qcr����̅D��e� ���G�b�Ξ�>m>���^-��q�.��+�St�8:��@�}�?�Iq�~�3	�.A�Ԁ�./��T���,�d�iD�K����奥�ln���(��z%AD8�m�YPlೳ� cl�����[wHt]'#q��P�O)F�A���*~A\��)(f_0�o0o���}v�%��#1jd�]���T2cv�؀�P��A5<�/CM��/$��\YOSb�K?2{c�q�Cġ"��-]�~̫���;_����x<�;������)���HEna�m�`�%Z�B�{<��	�̳<~~�+f1Ա���稡,Ɯ3"""#� )H۠"�����)�!����������]j�Mty��Q��/��`�" ��&���,���DnpIw)���]B�IfE�����E��%S��x�.��]�F5��Z�x8JK�9��V����_h�A^On$��^��6t"N�6V���_��p^�������dE ��]�,E����6�A��T�!w��g�ք��*�V����O�2����L�t����w�6��;Y	!P���,�W�(]�͉RtGq�R$�v*V��]��,�9���_���;��ӽњVR/�OӴF��Q��>b�Q��=��"p\�p�r����mv?����A��K�q�@�8�;@x<��L86x&��k׃���t�㝷����O����\M>�z&"�$f�h�|R=����મ�/V�$�)b8�ģ��Ci�	����<n9��skJy�e��,\�<�>���(�/�` MV J��"P ����~��X? �k��4��!���'KJ���
A���ҭ � �N 5(T�n��ڦfg��}��G�����cm���2�!]�|a'=l�;�oX�����*�x/�Z�q��b�[��6>�9�
�茱�a�2��t�4�F?��S"ݖ� >2"k���ӁسVcյv�K[n�nH���7�N�IDaw�pƌ섈�L�����������p���Kp !������\iB���=���9żZ��XToј`�d��basN�7h��	�|!՛W�jn�Ĭ��!���!ͪ����c��/4���1��k�L�69�,�f-�-<d�� �1V���:�g�k06Mg45f����1լIk/+OTHhԇ��C��R�d��0e��g@��yD��4T�[����X���B,̛»J��<"8-��X�c�]y���s�]�P�m�fOtǪ�e��	��*�sV]%���� �&��:�2��lQ��bˀ���(U�� ̦�`"��a� e���:���Z� �����x�r;�w��@�2u;b��dT"�r��d42f���B7ԧ�kQ���Yn)(�|Q,l��=}JV]�[�Uמ��!V]}v����-Nsӳ���JޟE�xH.�n�4OÍr���b��Y�?�#���fA`�К��1�i�{������m���E��ӥ��唈��p�Jn!�ܫޮ^��מ�?�q��4`	��cw瑟p���fz���+�y`�݃p�o���������'O�|`�I�m�R�8�)�Ț�&#h���հmڈQ0-l�tp'���
�ܷy�_�.67x�p��,)q�˥����Ku:%��RDZ*��2G,�P�cO�v�}ꐀ'��z$0-�#�iW$]R����YǪ��� Gm�'��8n�w22̈́�)+p��n2D�ٖ-(d�X��U�:S���^���=�A`�����u�4\�U�(��]�U唧�n$m,��9Qpf��5Ѽ�� �{1�H��7�1�S���3�.�]�SV]�!!�����d���߁0C$F�E����ғB��|�ؒU��J
^��iQE�%�I/���9�@U�4��E7����#���F��p{�p=d+%��êk��UW\���=ϡ�d;G+���+SSbpE۝�O����'%��[�`�7!`�	ݎڵh�E��+�v��y�n���zsm ��:p�7�xу���ݐ?L;��t�c�
(` %�h4@��h�Qc|r+�=�n����A�9z���Mw}s���k�s�b��*	~�|E� ��) WX�@�_�KS�Ѹ�
��?�����l��܆l�wKy�l��	_�n�$�/��	޲$�����7�����Yn��IcO�]�Xu�]�8�䒮z`y��W�$O���eY^��l�{�}E�Cm6V]m���<��4�]%3�,A���8���<�$�]�s���Z�nm߶��>m7[;t�i��q�#7�5�������1�*o�Ӫ<�q��#�a�Ӕ,!x���HB��/�?���>F^��j�"�D�E�C����2��&5�ֈ��j����"T�d���B~,S!�*˔Xd2qC���^�x���E�\	a���B�J�ƥ�/5���+�5���Qd��Z��WB����b����+/�&YdL�C��:T�.n��غ�v���Ğ�>�����.�=s{]��{=��9�\P�5���^ϝ��Jɸ݆Xuڱ��$�ω\�MKw"'���1)],P��ě1)W�(@�ڪ}�2�%9��u�ȗT�\MyA�53�)���S�X) S�� ��̾i��|�oG,��Ţ�����=�g���`�B7�*�kJ�����M��t&�vkۥi��T
%����'y�v������YdF|�+ËE�ւIWӯ�W�CM���hѸ�e{�����Uן̪kFO[�Ã���s�
p��a3o�{�F&bvdZ}{ͳ�I2�������^5�}�{0�~��ߧ�����@x��wW�'x��+�s�.��'~��I�+������"��KvX�a�V9��;��z�Q�
��"PO=�XA1�i��M�<\`a8]	���\`P��٪�E&J�2[V����G���&<?�lD��R5l����%v�>��èTVe��,�
�P_T��lq��1�S~��w��~(���B5�3�먱(��TF�I�t��)c�e%
b��������^�`;�ZM &�w˹�2���ݞ#�]�U�I84��T7ei&ܚ����:j��9�q���|�h�OhxO��(	��A��)Vr��O�H*�cxr
���a�{���l�E��a�y�w�
��q"UGc�5����Rnj1@Oh�X�F��[�:,�\Q��;�@.���Y�Rp8���5x�Ue'Z����G-EШ���,bӊ$->��c�fA�8/�b�K������"DJȏi�A7M�L���݋MҍͼD�r$4��pv��7>���?U�#��"�f�-�.�eL.��MǾ��G	 �6�m�.7�T��S]djE6����V��B�r�E���D��:4�m�5D�h�����]���2�M�"����b	9�H��n"�ds]`zds¸ꉪ6+ �fK�T�ϥH���Z)�*��k�E����_KQ��)�g��$���E
C{Q	b.�3�/��$p��{.P=��v�A���A0�3(�/�` EV ��"P0X����C(?O�����2~q�sß!ʠ�OYIo����YAn��w�� �)L[Dz�KC���\4��.�>���N��!R�#�]��LVS�mڐ�+��4aL�,3YP�ۛe&��e�^׋f?e�e$0�����CQS9̖j���t=���5_Pa~H�#�,� `K�S�Up	Ko�F6����7�ߊ��:[Õݼ�����\�u�b�#���q-����:vԺȈ�+��nCB\g���$wi\�pW�u��>��u8ٵ����]��:<Y�mb�鎪Z��Q�'wTͫ 3x:�ƵR(��/=�G?�y�׌���_���w�G����`0�����/��t�Q0� &KF��<5j���"eʔ."`i�TѬH��B#Z�!0p'��4�y�$��[��V��6wI��dw�M�~��F37F:�u]�*w���ɺ��hi��pׇ����&9h�1�����*M��uT�		uTjb��:������kr���̔�nk��{>��W����,p¾d]]]�ab�9�*�
�f]e�b�Df�$�kĻ���B �Cށ�ܸq㦋�[�5��͛7��ż�(e�q�R��+�ٕ��6S��}��>W�l4gcG���jZ���($^�i���UA~r$�zi�:�!��*�w��Y��y��
`V�%��e��D�+M��R�.��?�o��}�M��\m������t�GϸKκ��4 �b����:�y��c�R�&� I`�X������
�uz��֫�G�Єo �B� (*���QR��!_�8=({yyyum��ޥ���)��>�ҶO��]����q]�ݒ�!���%�&�n�u�	��v
�R��r7%�i""�v�;�E�"]�_�p�T��Em��a���������z>���	5{��	U<��bе�(��IxG�d�!�4)H� ±�m[2���&MhF8��E$���gz�%�ۻ��[_~-E��8��\w
q*����⸋�qyĮwx������騺sS��FEg;����į��������]��6����D!a��9����2K�[2��b�\T���W����EL.I�\͟�����y�$s��Z#�?0b?�su|sl���$���#��Q�wT}!#�~�/�Z�?��&`�B��icfM.}a�i�����M�;�d���Ͷn�B}����H�8A>�'����<�\�G�"O:�)\l�bcʖPl �r<=p##,)Y�lPmY%��G��Gȷ�ƍ	|4��
7��\�H�E����@�n�p��dpB�V�a����]���g-�K¬�<��Y뭾$�F��h�����^�8>�k#nĝ0j�:e���EIf�B��:M���ϒ��/J23���j�cFU�h�x%�I��P;敞}ޣ�e�t��?�2v�
�9B�n2*����ު�� ��Ձ��Yx��pA�6l~�oXNS,�N��"�����9�.��E�q7�U�'$Î�����|�?���Ĝ7M������o
o:r�)qȕ�TqU��\#��+�{��2��6yy����F:rO��k�;��BA@�:���8�ӏ�qv��]�vI�m�JZ%/(i� ɲ�x�\�h| �#G�� ���k��D֔�������cK�ǖ&O��L�7s�	u=�?=�I�z�°qw��:�r¶oUwm<��X�u�̴������J���j=�t��>��]�|ت���Q�T{����3�g�e<�_cO�D����p���`�P��Χ��4�7�9�"^�ૼ{\潗QrN������n��iaQ.���yBV"�yoe�a�����O�p�׉��I�0/��S����
�X6�d(;��zs8��Q�0!JVR�0LMܙ�Y�������dIl6B:�u;�Y�9��U��U�P�������*�W0����x��p�Ux��L^*����%�+
��x�HYYI��Dŉ0e7��:���6�ʸkrݣ1obM��kR�`��q�w�U1yⶉ�6�:#;��I��<�G"V5%V���$��"QQC�,@Ed�a�,NZ��`ŀ���GV�����+�G!؉�!Z�h]�C�� �_ �P�&^7��vʦF�]�$3sFi�v]Һ�	qw�Y�j�n�e��jN�먪+;�����<�k���n�?��ѫ����/"G<��(�S��HT�[ƨ�^mQ�|(Ng�;�jZB*
"������$��4"""#"IR�����P�bL�MzEp���C��1������+�+�N5C��d+5�Y<�����T�%�X#2����\(�4�<f� ~Q5f�ʭk9�9o#���>�S��/p�/	6���L�@�V�pDH��Ǯ�B]��$!�5r��8��.߅�߄��t8`�\m�l�2�
��Gۈ	�kD�c�$�}\�0fk~+I[��Hz�T��bܬ-_�ODT�*��o���OC�ǡ�_�g�$��%V�[�ɐ��5�����W��K�U�5���Q0[�zI��'�c&�������;�sOgᐼ�m&c�՝�w�dj=K�H0����@�, j���e~�����M4��g!����x�8v�A�E�m:���R��l�ᴞq�4�f@=A��'�E�X>H����2h�ʇ��	$��˾���b&�e�s��|���s0����6��؀�pD��c�qZz�,IVS/�2��s�pH����m%�נ����N�aҞ�.�)(�/�` �T �"Q V��U���S8a� �77���|�W�(X���>�T-��z������Q�*����Pu#�� /NU��8e����{������)�>���h�G
?R9�3�s�P!y�^N��+��L�¿L�9
vJ-N�R ��p
�myB��I�ʙ����ɖ"`��
�FLq�FM		���Q<b�i�ʠ0��-�T��A�#ugԖ*�'b����oz��`�K�9�p���]��ںh�a�<�����P���Ac�g����������|u��5�{ ��
��~�>��2hsao�c`�,����R����0�<,Y�5������f����g��53_݌��3�z�o������e3�\&��i�yW�O�W���7��,����_!ݤ�P�P��i!Y�Xer?����(�L�B�̪,�3̪l�LÎ�׼�u���������:�D�����O#t7L�G"�(�ɦmʦ��i��Ī˥�۹�z�{���]UC;������{�Gz��N�Si����c��63����঳'ڬ�$\��Vr�Z�:�3�&���J�'W�@	�3I��a�(�ي&��l˘NԖ��2�yË���H��ǜ�
yER�|�dc ��E�m~Ӗ�i�u������r��7?�|�#%�/?�������o�|�|	:��$�;eeR��:���H␇$�ʒd(p��is~3Ӑ�n���>�ǋ����֙1���|4���žx�1�1��|@:��:�OCV�!�����E/�T��������,e�v9���m��\A��
i=.Hf��8�ːQ�@�`�(��h�O,�>	Qg��y��;��[��~>wy�C=��p�`�����)e�EDF	;�-�^!�\�D7���(!�j˨w�BpeC�-��]X�e��0!���"���bM��ܴl\A0�A�B�����_"��i�*���u����v�v/��g���c�ݽݮ���u���������9�9���l��]�u� KA�Wz��0qN����'�*�ϙ��`!&�|pLe�o�
_� ɪQD{�^�S
7��'�Q��阆<\��xWկH���N��W���.J#��rjr$l	��#"/�018�Юfd�6-���UU`O0@�	�p0��'�Uˡ�
;q��t�u��RTl�d%����{���M�%��K@V|u��b�Ս��Ww_][3�q/���ݚ���Ir	J�emF,�3"�mW�'U~U `���h�������x��2jH���S˂W�|��j$S8��@[�]G�u�����+��v���!W�L�T�i�݁[�ok6h�5��W���y$�9$�Y��M�TL�"mF�x�r�%�hЌ��I�a:`���
0F�6mٵ�\	��
}-_�6��nP
��)���]y���k��O!���"Z���!�&����Q)�)d��F�2��6յ:[�v�A���|7|uo||u}<��3ԙC���!MPŕ��f4���*ϜK3{��Xf�1�M[6m�WUw����4�?�s��mm��}>|u}R����z�=+/^����/���z���>��Ή���^I��B�������~"
{��_�Y<�Hm���بrm��jH%ǘf�1�e�6np1A�I#\��D;2�83�8����qǍ_[M�4rً���7�r�p��:*�$y0���<8fC.b��%!�5���+���H`.����\b^�g2(����c6�1)�/2.c^`�,�+--+Zm��Ԅ�,�E�Hj���@�G/���dVea����nS>R[�Ms��/̪����N��ܢ?���<=@!��Lv��u��%�Ź�׶n E�z��:�om��;���v类-�c�ε���`[c��b��W�~��	�>d���ٽ)�����bwn��I[�GC\���-���N1�mWgw��EՋ�̨$����$V2h V2��⮪!,��XT�;'$q ���>vP�ª��[k-�M�,�(��<�W��|�����:����Y�����s����,���3VhAD�������F�/0-^#L1�HU.Z��""C��1),��r�1)�l�U���Ƿ���F���5I�$cg�f.09q#�����4eDhD"��I���)c =�ԐiR(c@/D�84�IuS�_#�v�	ڏ���yy��e#�P=c���/lB`PO1�Y�ƣ:aK�H�|?�k|:��Az~���zdC+���X���Mh�b�"��-׹i�TW���589ʑi�$�l�<�����3��M�T��G�!7�G��XY&8�������y�]�
�s���x������_��p@�0��b�aX ~ˉo�+8O��x�T��~D���L�B��9�п�ì�_U/��)�NUYU��<!y](��� eY֖nÔW���E®�^��H��5�f2��r����ZE���?53��g���ڮ�T�Q�ju�j0/��*ܘAD^��vs�Ϫ8�X�ổA�nt�>�xZ�>Z�� :J_n��.@�������d� &Ę��/B�;�s4�U�r]�S6H`�@.a#����C�6��@��@�BM25�U��5n���u�B'F �f5LCg+�ٍ ������qE��(�/�` 5S 
�!O �2�K���M0mMA��G�>�L��E*�A�!����1۩�[o����&��a��.�ݸeaG�롖k�� �͖)eJ��d��� �u�&�zJ�$MtL�5O���E�����i~�MS�ͷ4�/�M����p��8sS�S����[n�efk����Y��[����	3w-�Ty/'�.fVJ:�Vt�E�$�h����XLu��9W�O��V�^`�k�n�|4���\�B��O�=yv� ɒT�Y�������f���k�r���~��5��|�uޝ7�	�![Q�,-`�q�@�ɻ`Q�}Lj�D��������[}B%�]?9�Mn���鮷��Oݭ=��])4��0
)����r��غ���lwn�w}����n0��\���{�)��O,S�Q H&�q�	�&�>-Z0�6:������5̘1�NQ���"��+��B;���x�NN0�g��QW���lho�%��#jb��I�RI��i���
	���]��up��fvӡۺ�t7-r�tPn��v�z3�M�n 7�.���91�T��NUU솳p"zеk��P5�^s;�3Ϟֲ�1󁖼��Y{y���%5���ġʪ�z|cQ�۴��m�~��v��t����'�yΗ��v/zv��VY@Mq�h`-h�nb+MYF ����B��us�ppS�E˪�)C���&}G��ÞcչM�Mu@hz[T���^`�
�� _��Ygb�ą&,�0{6���ĝ"\��K��ewp��$O��������`6� wF����L��V�6���&Q��]�X���]⩻[no������MQw��Q�ʅ�:�M�>K#��}
�ns�h�4��<&�3�&����K<U��oZs�7��n�����������<���( B���aaQ��O��"���
��P:��/�AuA� B��`I�Ŧ����Q�%GIG�*�U	Z��L:j��HI�L	m���C�޴�zS���>���K�GB0����#�y�{�-���=~���Wg��YZ��$�')(�����]�0����-n��%��?�%q*��l A�<�FZw��L�h�'��Rπ�;c�5�2+th/H��"��>J|�{�=J�7u9�</���/�U{=;���|����c�yFL�oy~y�=�<�V,�ۘ�j�6S���г�G�݆���m0W��m��Ft����2rSnF�c7�� ���WY���F��r���Ȕ�.�tֳ+O�|s�kr���������l3�[���|�����;��!�#�b��N����GK���!��:d��!2�Θ}iuU�ؔ��%y�$1���>�s���giV��_P�*L��-13��5����a��K����%'f��|xkȏ0��`~�#�K\�j�1O�-)���	�^�=��}ps����7MS�?��>��f���1SUVNR�Ȩ �T$��W������*9k�xk�$csl#G���Ē۪ă8���wL�h��Mܟ��C���z��B��λђ�̇i����~^`�Â(����3�
�,͆���O�^&M٘9�AC��֌����ID|'&�W���0)U�t�=/���Y"ֱ�?O:z꩏����_�>*���E�2��s�#bB��ǉ��i��4?&��ak{�
�"��r��� ˤ1�!��h����=�M�_qq{���X�'` �X���v�(^Y��?GJ�-8�J;�3	���I%JT=��!����"��zAozso��7�7v�;����L���B|P�ʹ�X���~���#LD� �7O2§��,?&'֑Yv}t}��zny6ϊخ�����[a+��Η�h�7��>ED+g�@�
��)
ƓV����*��������T���?�q��;`�Ud9f0N��ba5��}=�Hd�|c�}�9m�����l�T^��M�>K����h�x,+~�ar��bs��͵����:�����,V��<(���i.i����\�'I�<颡@���&��Q%�o,��ކp՗;���.к��w� �2J�J1����W��������r�j(���� s�	F$�4m����0��R3%I��ݘ(��t�h���4W:���s1xqp%�ݞ�qU۪�t�7��\d�ϱOW!��RF�pw�76�&$ѹ�?m@�L[����PbNc%��/�\!FΒ4��|0��Z����K!����>e���(�x��M@, {1�9\F m�Ͻ���V��E�7��	?���?��3�]
Y�,]|3؏u�.&%h�~[�	��H�cl�8B^Xp�t��d,��ú��H`�e��r�h�jV�+���f�H�H�չ�[z!�����r���1�ev��� ��H���*n�K�v+t��6\~W�������U�w믄��o�\�7趲.C�d^N�!��j�	1	0+d�J7iP�[�l��s@�$�0H�0�i�r��}���fْ�2C��TkYM,;�/ɖ	��6���-�:pw�⠸��LND�#��/�rL F*�t�hA�6#��� U��!�Y��𦠻Ǖp��t�*���S)���BC1����
+���\�,���O�۫(�/�` O ���N0�t�J<ꣾ4�1���ܕp��eTp�p�z~NR7�*H����X��j�$rc�^��5}�a�z���6a�h�-�L)���@��R���d�P��	�g�<�*h��E]� Ըy�L1g竛'���K��$��!���S32�D>dc�z�l��|4�k��A=i��d�}	�x�x�S��ʹ���m����s^g��tWz:�md�Kﲒ����B�,|�+}�|��X�.��VUy3r����Q�~$ILW�DA�MF�8U���|ᡞ9#�F3�ې�E�����;W��4�1G/VΕ�zn�x)Y��[���o�����t=h��B��p���Z�w�X�L�<�^nT��A�fH�d�"�R�����W~�J?d�����W�F�G�݀'����։�^/�&;
�=��_ï�-���g�-4�����<z,ydW��z,k�,ıO�8����s��wOb{�w
��e��tVz^�\3|3��o#�p`�$������cie���[z,[J?�>=�_.�g�]��"�*B�u����s�ĭ�zLF�l��ml9@�̇�"r����$	�$Y��Kw5����	x��u�yu����X��ӛ���>5g��P'�'!*�a����*�L��&���ٲ�i�,�l(zh�|�$O�H�����欖��-c�w�����;�+�VV�b��˥�;��Ϸ��_�����4��8zy��=��J'K��1�̓�!��HI)13T���",!AGE�-fXW�+��
^2�~J5��%;Ȓ>>Ff�Fd�6"$��y� 	�|b��ɘ�w�|5����2Fc�K��ǒ���p���u��;LB�"f�����( XP��J� �q�|%<���<p���M�F�� �OhpzBuRX�!��1t��l�v�D�Ek�[���ZM4O���y#�q;�"\ ���x��5�4��d��I��54��rȥ��5���&;�"���۳�|������K����"K�](-]y�
;d?z,lC`��S]�;
i*9l3[��	z�з�?_l:M�/��/_E��O��*5s�N�1�~84C�zm!XY��<Z;���eg1=�1���K.:z��w��ʡ��aJ���I��[z)���P��ij��Ua捞��"%�%g������~:�gl�b`�˅D����
?������qi��1FӬ\�p˕�<���c)�c��\��x��e}�G��.��L�� �CO�ey'<+��VR����$E����`=��)���UV��U9pI�ʮ֧8��u`J��z�R@l�Nz@z,��y��<I�������i	���2���$Y��s�|�A!���[w&#$�&V�ő�-E�G�̓Y��ͷ�E8L�,��@Z\!�w��G_��F�f[��)7ވ*QY ��RgOF>g�1���7/�1�g���Їl�?��5���KN�.�H��)+�0=��<<z,y��H�; Nt�Di�=�����d�\��6� C���t^z:�'wn�Ɵ˛o��������p��}���.s��@w(����((m�� ���},��g����JK�7�A&�#�s���,�5I�'Q�Ę��=F+���Ȑ��r9$$Xa�I�E�"�]Ҭ��x��X&�c)�C�MW�V,w"��1(�Jis�/XDq�
�}�������v�2��xS.�2݌�3Rp���ݠ��p�F�$x�����w���:9}�.�ڒ�%��&D�S�2�T���Nl��MapNuqWΕ=��TH��-��T��BC/�n��"M��)�[eC�-sF��EI�������ݗw7W٘��69G� �W7��bf��Ŷ}<UՎ6g�.a�P�VE!����ǀ3�Z~��#�P%�B�/�M���~t�7�$E����z�vBy�#�0㟼󼃅�v�� �ѠR��I���"�`��-3�)�RF�f}�[LS�ƋllQ*�?�+W!+���X�\�h�_�҅o栄�O(Y�}kD��÷8iE������E��Z	�do�ә1E�G�H�\�~l��R�l/5��m�(u��Οp�:���l�b֚��Ӳ�@�'SZ��N��g �a$d(�"���+ 4�[�3#&>�<3P�La��1.��Y��Ua�=�0H�!�յ�;�L�Z�*�9f���䭕Ƴ��LZ1�Ab�g� 4�
�G~���v0@�Z�cC�bK^�2�[j�u���6�ka�Q�˄���eO��|�CkxE�8�H0��(�3�=��� ������.�'�����g��n5ȹ2#��*��f%n1�u��:�nQ۔;Um�^�~�)S�#!�-��P	�i#������/�K��ǾrE�� 8Дk�����Z3%O��%U�"��{q����@��=������c�Tc�����ߜ�<��D�"�H��
�����(�X2��26��IL�0��u�49���zb���Q]6V��"v�hҌ7�����{h(�/�` }G �qD>P,7�4DE� H��	@l,�<�cR�
���APX�`râSѼa�dv��k���z�A��D��l�}��>�VҦ�)�/��컦2���Oy��Y����y���L��"������!��,�T�^�l�5���,�N--GȲ]�V�겈Ĭ�������XEc[|D���5�}k����X��8���[���z�eb�2��1uuPeY����:W*�vE�j5hVʵ��X�]����zX����2�U[��p%��d���d���1����+����7���<��ĝ����Z���C�����m+m1*oM�m�}w�e���̾7+Sf_�%��[S����mak�L^��A��J�BC�r�u0�N%ٕ� ?ȶ"A^�T�Kʰ�D��y������a�ĵ��V������*E��X��;���jI(���e���&�v2��b>ޚ��i��>)�\��W��4���7n[J�BA6�r�cj�:�N�w�Q �b1)�>�{�dy�U4�i�}��n������_�4��d����n1�3�hS߸��H��4�M����Jo\Ƃ����;93n'g8���{���ͳ�r�WWka���	�Sf�w{��mo�+�-KM	*F�m5X0��Ĕ�#��a��	.�2Ӗ��>E�W���%ጉA�K���D6��&hI����׃�?�����D.���� Y��zV�j��f��qi`�E_������ڻ����[Of�^��?�a[P�)M���Aテ���A��']I���-�[d[�".��d�� ca�t��5��+�a�]����ja���UUս���s�j��b�K�^xի���<SS��>IB��ѩ�rC�5Yf75�|�]�c��ڪ���sF Y���h
�cLb�mm�x�ǂ�D�4��߯�YZ��.6e//mr.��e��X��������d��P�/��6�5�qx}���Ѝ��gt�*�Ck(Gy;��x�߾����Q���#-��zW
9��0$6t�N%�Gm�o1bD�1�HO�ȸ'�u�k���Z�M���񚬞�̾%/V�*�W|��7nB�}��(295x��(�Ք̾S8����M�D�uDݩ��;�&B�+IX��r����JX �V$(L�����,,��[�uu�-��)�\������=�Yȴȹx6&��B	�o�6m�.%a�
�qR4`8D���^t�'�]�h E��<iXg�|Y���څ��I�\�z�޸y��������I?z���b
^=��v���/hx��\̓���UY}�����8���=��e��RCS S�9jK��d��*s�s"��q{�b]����Y��(��,���U�����Z;�������|U7�Mf�[*�ojU%�o �b������t�PK#8h�HF��FIHxmy�
ݣ�駜jJ�������C�`��2}cɿ�����L�Ց���G�A���J�ڵ��te����Ӱ0�{�[O��8�]���U]���,~wV��|<�
ѩ`��;��c��M���J��z��,�+Z�ڐ:M��NO�gCRf=�$K�g�x��循�A>YU�R/܋L�RcUo�@ӪX�����o?�/��b��I����B ����%Gc)J$I
j�Ze���3��į�7�CIȊ�~3��,K< m���ZD�sI�U�y|� ڐG�%�5YzN�'P�:/�̕{�Ƌ�x����cv�ėWN�Ϊl��X�X��U�C @@t8�OGܹ|u�ͨ�q���*\5��h_d�����͇�06��ɞJ����?����]�H�lbǵ��?������G�dG��lE���zb���/��{m߮঵S��M���}�2Ҟ�UP
Q�!n�&O�2L�;�S��m�K����~`P�w<8!�>R{��/�����R�; �wW��*c'�{8�n��#m	Aƻ�5w`W!���t+��R�>D��Q��%|�No6Mf�
d��<PR�r���J�����.����+6!T8�L
 C�Ik�WM���s��-e~|� �Z�y�lL�:[��CF_"��������w�G�NݭB�/�<Q�Q&��B�4���А�����wg��;�*��u+��
���~�*>�;ʍ�2�8`K�񘜾�%
���NX�$�w�~8S5IL喕YYHB�
�
(\]?(�XK��X�5)#��hfӃ���20|�!��5�H����~����# �'���\�j<(V(�/�` }W *��#N ت�:�5���4��������ب���j(��<�B��ѽP\��ot&�2�)l�b������P<����N/{�ڮ�-S
/$~�jS��:��k7y99��੩5<XI�����9��RB��=��h��pg{2�|�5�sU�~�"7g�H��fs~s:esGF��u�E��	�w]��h��%'��Y�$P��d���*���ؾp�m.Q���k.�V�<s]��锝�3�D�ȵ�*d7p�c��A>��Ǧ3���Gh��<Dl!�h�8=��o��������k>��jB�B:e��t�!�%z��Ϛ�G���Y{�xv-�	�f����7|��>�=� �a�݁x�k�H��͋�;��J?V�=��׈-���&��gN@��p'Lӏ����5h�dx���Yb���7<�q�� 
o � � �gK��d�)b�l䭾��)��osfF���=G���P����[��[K&���'�Ω��7�v���ק3.ҙt�t��,NI�RI�H����u�z�S6��B�锭��p׉=7�ܨ��cq/�ો!����8v6c6������Fھ������	OAǰ�(�����S��z��􋺝�z� �D�@s��9nR��S6	FS��:�{�F����i������5i����K�|����]�35Z�`�]���Bn\�Q8��'�P��BH��(�{�[Ϟ���L{�����ј׈=r�D�Αv�i*�ۨSv�锥��!7�IH�{����^�2�X�G�2VXU!�
#d�t�`�!�W]�FJ����d`�PC5D ��猵��u�=��6�k�>&o-qh.�:5���!�2�s�|Y�ɰ�o�X�,VJr�:q$�"��(���5cR�L�c�;������˄?Jl/�$ce-Yu
�J�;�a;.~�`���á*�X$2��5x:o-K�s�����t�����un��f�W�{�JȰ"Ǟ��ԅN�m�ҴTGO�}�~�A!�O�
�g6]�t��K�Q@���c�M��Y���t�1��.j}OA�,ycYꠄ*z:��R���|AO�y(��g�%��M_��e�!�Ur3�}�xϑ܋\"+bǮg�Ų��l;:8Im-�WR��=At� ve=�s=u9`+<�"��M���ɬS6ߊn��O�" =h� �\T\___Rl'U�d������t���=_�N�:r�v��UM�z�����Ts�E3=�5=5��dm��֖jDA6ؚK��nιD�esX(g���-��<�Z��{�co2r	�E����&�$UB�@���7\@�đ�5bf�3�``d���Fh�� !CC�:3<��-c10c�������>�hn'|z5��`��^&�Mu6G�ζ������.�������t��L�����/�t�2����� 0�^5��J�}t/�to������ȃ�+�J[HT�.�l��y�
�RD�X�/_pb@`p�V����쨎��gꀭP�WP��D$7�\�H�v�q�����K��jn�Q��!Vwj��J4C��)��<�ۂ��E�Ê7�ݯd��N?9��f,17..VXy���U�"U`:�q�C�ô0����U	�*��������[y]��>�6�2��
%l��������NE�w��tNz�%��]b���%��t���M�H�������s�X����㧞�� ��w�|��>���e�DoX<#�F>t%��n��Zp�PȐ1�/�3f�f�x�����\A�FnXaaYQ�ue �1�dj
�R|���R ˋ�@��cL��
�{��n�[��N�%�O7I�ҍ��=��u;u=���'�+�ñ���zDo�c�������e��)[�:eO�|7��b�>�.ǘx	���o��.��'e�I�NYY륣c�>��}D��@�N���	b���
@ђ���ҨC�8h����*b�\e�Ch�M����%o�>��>Nq�-��7Z���ȕF5X���c �zPP�-Q����T��T�<�Q��/���d�G92{�������[MU���~ĴHg��5e�fͷ�o���t�ڌ����g�Xq���]b^xaJ �Y��2k{-Y�g��3��]Q[Y���5�dпA:e�x���e��Bǎ��5j�X"�,0��@Ua}pF;#Ə�>0�0�G3ULH�u#��(d�zD���#HЯL��,qO�;�|I;��܇����^l�<�G�)�o�X:�#��GF��w�
X�(�� 9�T�e��qǨ5""���H�$�`��+`�RΠI
�ཐg�\�������+�q,c(!`�A����E",���$"E�$�Ď��CMR��ZKa�CK���l.����Ej��+7Ǯm��"@���E�D�v4�c�\����(y�&e!��Gns�?�x|��sTM�M\��ҵ���\�_*3��Š��m`�f��$%�>�,漸$jw�֣�l������I&�0՛��� ����у��D��0_��O[����Q�j���Y�Β J|�� {4r=�R+G����J���ˍ�醮�f�K�O�3��(��S��Y:��|r#-��(���Z�A���F���-��5�q��8_2Hv�8�coԕc&k&^P�� �A�쌩]�7��gN�I�yHL��lȵ�#>�����S�Z�y	]��)Q�PJX����_������?�b���������3�g:�@�)��b�0tO(�/�` S ��!O Z�D�fQ5984�B��&_�C}���n�/v�Q8���4c�8�BK���e���+�5�W�׽m��Mڢ�����2���j���
�TaG�H\��%�9�Q��ℙ:@�iK�-r�I�� ��&CDa��Ft��A��{c^����P�~��@?��64��8�ǃ={�������fÞvȮy���+>��f-wu5Z��j��\��
��^g"��X��X�ay~����6"�>��q�B�;˶�B�GO��${Q|@�<�\�3{����v�clZ�n�3�FV�G&�����~�cO������$��h���&	���Aj�P}>�_�#?�$�R�Ǒ(RS�a�P�w�mh��?�˱g����u�=��~澺�G��'}��߽I3���w�I����澎eT�T&�E/#^v��LD<2V�e}���g�7_��^��F���[J�TyJ1�yA�,��k��G�t	���!;PB$�+#P��ȫ�.p�j�F
2�#�FSS��^�	 �@�`�c���?j
	��%y��M�'{?��A�{�v�3w&9:(xK�z>����<�rOwc�S��9`�p[����l��/�0�������}���8���P�J����;�7dr�b��S��&�Ւ��X������A>��<cԡ���M��{��R��"�R�'YY����JW�SC�u��m����kE�b����I��	��"��"�"�R��f���~4���F�֮x�Юy'�Wk�S�
�w��Q��y�X���Xw=���N� �[<����&%� �� �p��
5K�!���18����B�#�T����,!�y�3(��P{� POE��s+m�M�GSi8�G�=�����X�&��f�:�}4�������õP��C^1�����#� �
B��hE��֫��)G��x�d!ɕ�LP��A�gpA�Q��f�pS�WI��`uG��;5~�3�?�l#��Þ/{�����LD����Y�:����XA}ϟ/d\��:��!h��ڒ��Ȑ�� RLHÕ��96#���\� �QE�	O/(Yɂ��h�FrH�hh��jƌ8�]��:�4�TL�%��BI�R�4)-���L�f,���N�V�1�jW��v�ǽ�S�j��/Z��D,�1t��r���0Û�H�F�RC���?���p��9��'���e:�If��͝i�F���Ҹ���~�#l�%/w�)����^�U�Mf3��QF��"2����$`!0���Nq����;��:�����0z)�0xjq��M1(`4���3��d��Q<Қ�U�ê~�����a_>q�`����dD��1�[�8��Yp�'�q|��.�x�p2�1o�(�@-9Q��\�m�@.�mC}N���t�&��N��j�)OwW+N�hy�?m�̞8����D�!s�#�D���Ҥ1N���He�L�
O��1;d��Eq�6Jh�|�P�������7�=��=Wc�Xw�~�p�h>4t+�{�����zz�H�1*�Ơ%G;�j1�e��#d�d}�2�M��*s`@��T���/ȧÞ�c쉟����3�����ٙ�|v�K�'���K&�!��ET	����HE� 
�SRM��
4���H8M�@���0E�Fd t����ֵ��D�P'���y��҈܆�/*<�z�$�:Z���#��8FM���˥�ߗo����##E;4��D��++7#pף�a�Ā�F K�;���R��g�����=a6��u~vX_��I�$+�q�N&��+��;�{�E/#*�����G9JC@�"H��3J��8+�͈s ��Iځ����6�9�H��
��rf���֕�uϜfI����f�̈Ϻ;��S��&s��v�$'w��5���_���nF$���j�HDU��\~�0`��V�U�8l3�8��:��=��K�v՛��6�����wϹ�q|�9w������i+��^���jA��р����r����H�?XϽ���^�}������x�97k,Nv����~��4V1.����H� ���x A�l�uѧ ?zR��'��ѓ�W-@@(��\\?Ӿ�hR�娑 ƠBFDDDDDd&mP!"r�<`%1M!�L�HRRPR���I�@i����E��q@��Cw���L�R"�T��t{G�ҭsr�f�	+��9Iȕ2�KL�`d�^��#sQ̲o�`�*��s��7��yةY�Ѱ��T�Mvv��-J0�5�~����я ����<�w�X���<��ΉwءřcӐ�VC�e�/ɆI*�&�Ԧ��Z<���O���=h1�gN���A$|���q
�EH�F [�t� AN�LaO��Il�5��}ޠ���,'ϓI	�m��)%�C�w %��񹴐�2��D�<�8m�E�����
lH[c��+�����.4���Q�M{�A�_]?�����~�"`ع:P��Fx=��w� �߁�`�����bZ�*�kiB�F���h�2x�H����Y��Ymp+�'�8py9�]�)�������0W��bș@����Y�"'���LdD�F@H�E.Z�N��B<V�� Y�r^/�ȁ$wb���fB(N�� ����"�Gi��HKLI(�/�` UR ��X N X���l�z+��Mq3��t **�����)�v�#J���ch(�oGj+���U����bf��ݢ��e�6f��DH�R���F�C��Vpmv7���g#�qe�0�����䖵�m��i[�:�:|u��������N°���Md�l-Z����p�XQ�����a�Y��LWڙ!��ٲ�j�t��[�����P]�A@��Q�q-�����+�瘞x����B�~ŉ7_;>� d	�����z��Hg����˔�� V��t!z���EG�(՞j�d��.�s���[}������jא��m�k�LZX�3X�[�W#eɊ��[K{��pEa�{x�3��{��5G���JB�8Ad�
sk��7����f�X��BD�Oid;Q�,�J�6^/	�XY_����-C-5'eB�! �����_�K��j��nچ47mi5l�����"e�q�U�~�q�V��(
�+�ӥ�A����m&C/"l��D7mE�
��L��i�+&�/�[�<�多��M�/U���W�RME;n��h�����F�y��+��`�u�nvm��;�����~%�&W�H9�6r�l9d������%��|K�PE՟]���6��	��+����7�R�Ŭ���{��އ}�D<��4X0LL,MH��ﾧ��ɢ�#]n���O��ݕj��nڎ�<��U��_�iȕ�+e|8���/���#R�7� [�˽�#+4�ݼ)l#�@)p�e�x�����zT����	��X�e�nE�#����Tv��=�p!��P�\��ߵl/��0EH����^	^���|�"��b��$!O�393��'
����x,�[Z�}OUu�m�-M 3|����A.��m���\+ew%e�8�!���6���D�Uu��m���%���Vy�k��c����G�����9>��E	b&в���*�oѲ~��
��u����Ĭ�,I�xD��[��!�4M��j���� I�r$Gs�*h�g�[�7eC��_E4��~�z#��<=��G��S�Xod�$D| �4��[e�̵mx0�VQ˲i,]\51�(��;�����v��r-Mפ�N ��W>��W�},J�1����`��%l�1�b��UeSܜ�As�p]�0��Je6& ��=?d$�|@��q�<Љ��O���{xe�%��h�41|[���lO�;�ȅ|+��Y�
K�)@�ΐ��5�W�R��J_j.6���\<1����=�Ѓ�D�qM2�DSEUq�e��UTU]nG�n�}�}ּS�{[��ѥӈzܴ���%�+B_*.�<+{0j� K�aa��L�u����u���6k�y�R\}){��#��:�B�vP<������ȑ[�KC�@�[i a�q��S:�l�b�d��|J;^:��Ϲ�!���Su������� ��Ϩ�ٞ�ӧǩ=��ԭ��.�_M�d��d��lI�SsjI�#uj�r�k��pY��36c	S�8L�E�~�o�ڑ�����C���
A�	[�XF��Y �P)���#狆4G��k>C%j��8a^��+�c�|JGeY�_����_(��;raY�w&�h��x��}f;�Q�(NΨ�0�^=��	��1�"`Z>E�Ha^6IӦ��;�%���nn�Ϟ���̵�tӖjw��2��W��#/��8�+!ы����À ��M�"-���6�x3�c�L-�������/����8`}�+���C��)����M�҉�I?�Ѝ�|].�qK~���Mr� �Ό�%\>_;�hȺ�#��ݔ�Mzd �]�tY�+;�����K>d�<��`�� �5ÕE�9B�MK�I���S���p^���^�s�W�i[
qճ2aY��!c�G$g���6���ϔ{�;���)y�������Y)�-zsw"�#��=Qβ�fC>�+�`�� x���#�	.E�}d_+����a�����;��O�O��"x�����(f4#2"D�$���*; �R
%��3 R2��l�$DԿ�S�AJ���:�B�F�����	}j�xi�R��C෬P�d��+��ss�1�yL�`N�������B��\RM|������C�i.��R�>��ufh����\��4��1FGܺ�X16�2܂�|�ѹ��d��U�!&��ʱ����K�c���zg��]md�F?hZJq�i_��E>�(�&��
+�b�.�E�P*2w�����j���I���:o2� BT�fO���t��-�<Ă���A���3r5M�1������8{d��s�F\up���
KȚ� Aѱ&��:�o����v�l����[f|[�_L)�'�:G%֗�L>��y�PE��S�}��Q�!�`�q9����M�fi�>Uu8W��d7%c?}����F��`���U�;7���tj)�G~�6X����5�~�Fot�R�eԷ�Oo�vg.�4+W��}��D|Z���Xv��X��Y�-�D�$��5`�i]r�������q�p0·$Na"OoPu�b�(�/�` �L ��\P0Vu�K����[�7�p�M����eo��i��Mh�E�V)8�
���{�.D��]�/M<k{^�tף����_��<��-��)������*�*9����|�e�����W1�
�$�m��+�If�&P�Vv�R¡[����*&2��)'b>���b�f�6xk��yWӰ��U���*�qG#����C���*�H�1Cw9���t|�]�y��3��a�ᅡT1;9��rx�(g��~��YKӯu �WW�����G�G�j�A�߉'.0Pp֚�	 [�/G�O�|�����0�|�:)"%KѪ"����@ "ƈ�5�IFD�3n����@`���lB�ng��n�7_;��ђ��(�͝u��4q����n��ޜ]e�\�U�|�Gk �������ѯ��UT��PO�S�+%���U�vY�0�"H%m)b�@��(FC���QK��;�n}��&��v;��[w�o�6��zz��j�F}Bw$ �iGa���1�0}�@>f6]emf���0 9�UV�#A��,�F���1�:4rn����|�&���B�%����glq�7�8
�F7��<1��Y����mY��
�C���ǟ@�_�x$0��BC �1��>T�TP&��'&g�Q���)!t����#Nn@��@@H��0p��)K)(�hK�R�?������?U8���ۭV�j���B��7V�1�UKm��'�]��������s\�M��~M�����r���rjc��ku�N�����'-E�����?�I�����7V�_a��`Eː$$�0�F1�؊'7��RHL]��2�LK&H=`�Oh�i��ڪ��[�o������[]������0J#��
��+T%FAb��|�IcT�9s�5l�-C]�+�(�
�"Z7�i�8�|3ŋfI���:ֹ�ϛP��3�w̞^���W�8%p_z`q��}W�O9�j�|���G�Q�I
}�*�v���Xd q	:�@x��c��j8b$�RT�*L���2e���%��^e>o���),�-Z����7܏DJ,�	r�#���TĂ,"�A�:ܦ-P�����u���W�1��(�[}�;�����\��_�Y�*�Ѯ�h��%�t�{�5����?�	�˩�Q9	�H~~8cl���"�x�^ɗʱ�2��z�?�,��1���#S�h@s�KFL>L�ҨyY�*1�Ǔ�[?
�;�������ۆ�}�:W������]e���� ���y������t��З�I����7G���,S��&���������T1��k7mM����6[��������tV&s�|�ن��-u�>��5�����,zx����W �t����8�$��)aC����1��d�:SGӥ:���R��h:�ӛ������.��ʴK���7GM��"��e?�`��6�?o,�h�#g"�7)م�IIɣ�L��@���Y[��z�>��x%W�������S6���,BOoM�Ձ|��>�{ȳ�?��r�E���9�R�Nj�5�~�p_b�%�� sj*�(R@!Ȑ6~�Ђ���{M�tMۍ17�8��滬ɍ&G1�9����9�U��4� �(�I�I��b&
�1Ga���7-�[U�%����Zuɸ1�d��Q��<~"�XF#�?CE"��@d����-���b�wHADIp�� O�pEAnY��n��6����1g�T�
�{�����Od�E�x3�!t���S�Y��$��P�[�2�)�Ti�ˠb�(^(u{���"L�W^��3_�WK�Zz�i�n�==cG57�̸9�K��b]!��pYm�vu̮�f����&����������52�'�<p�]yP�p�)GJ��=�|ި �r���t�
�p+��n7�@���	y;��犹/���&�*+Kk�ErD�樑(�C#""�H��v��#���%�*�P��$)(���<j_I~�T�i[��{�fǆ�Ǹ�.6үU�3i�-�Bi�V]����s�J���m��+4�j|L\�?�>��Z�S���}����D�)���<�a�	�y$C�NoȊ�I���S�3h�(��2+�K�\k��%���T�m>�c�d�� �v|�v���9��_������֜Y&�0��y��SA �.ΐ�E{^�ob��6o���AOyDFVU
�B}�$kV�8S�	҉FR	�D���,�����G�{�軏:�:����]\=��wĪ��X�=`O�k�SA�� 
g����Є��1
+N�f5��EM��g��r�u����'�o��^xd8T�V��_�N�N�Ȯ���l��3�X|D��Y(��]�U�Y��<;�+QJd������2?�h,~#w�X�\��q�f,Ъ�������Ց>O���Q��NQ�"�T�]��P(�/�` �4 �O�I��Q>V��+Ex�Yw�Y��q�~�%4�6[4���mC.��Xl���o)0�7. .�CZ���e1n{�eJ�  ;E�u���G. C�y~�����G8������M���#i�ݾ9�?z���x�>A�{G03Q����LE
��w	�g<�4��n_���Bw�@��.Pǻ���A+-�e&�����;���l v/��S������=�X�/v��3��Fo��W��ɝ�L
2i:�n_�����V(����n��<_ݝ�]|%-C���w�sx"�����������V<����g�����R���'���:ݾ���:�)�t�9����-_�t���[;��Q���r���fr�?=��e��xt��l8��>Ҙ�
M�/3_�?�H��C��۪�w�R4;���#e�����P]o"��χG˰�.w�\_N�_ۛj}%bw����"a�����&�N@�y]}w�❖xw�m 3��H�
��=�n_Z؄5�rHpK�˓���{��ۯ���"՜�3����tO���0$�صL_E��#�`��O��nߝ;'Fp�j�\�����2t�_����%���j�N�	�U�H���Kǔܵ��_��>��"��#�Z|��ϲDʌ�G���r@?���Qn���tJ��p�S�~��P(D�%���e�E�4[�k7���[Cw5��ͶC���L����'\�nߢݾ?B�Ɂ.��9��)��1NNi4Y<
T&�`�: -�ɩ�4�	��H���*Q� ����B��|������i�����&%!.�������͆��(�G���t��p;�k�d��~.2�2��QN>W]|�������+>���p���]�%]��A���m�FcFU�^#��HIӬN&Cy�}y2�C.��9M4�H�dNO�P�l���� ��Ʉ.���g�5�l�O
��fug�fy�fs�����xʜn�\o=�P�T��ߓ�	��
ړ�\�GO��U|��B�f���U
ıҨ��BiĽ��ԗ�{cʬ�M]}Qf�ޗ��W��zZJ��z��S��(�I��T>�]��Q��WjᓮU@,�1h��~�k��|��Fy.�_�tU%�$�ۗ>R��\n��n�ZՋ�?��4�5"�H��$I1��0d5;�(ǘtFFd(�ǐ�=LK䃃s�Ũv	�!V�|�L9���f7/'ݗ���!�$��6��BY�a����Ai-E#���;W�ۻ��9��R��Ϊ��eU��oJ���$���S����æ��O�
O`cx�3d�����C���.P�Cu2�ey�1E����H����z)!X:W|�W(A�>���̓��$�76�PΡL��`���j�,:	�c���q�_^��<�����g;1*  �`�s��|p:�z����2���e6�0leNG�(��-�DU��(,F�@z[�8#;S&�猺�1��:�K�l�h��&ݲ�s��w�>�Vl�e;��G�R�e��(-q됧�1&��aA��;?n��}0]9��G������y,��i���V�q��VU��s��-���0��ښ���͉|\Y������"�o�V~n=ݭ���lD�0��ɺ��.4(��?>���G�õ�?��_�~�>@>�D��gs����������A����/^�q�.�����(�/�` -= �]�BP�qڌC���p�,'?��ߺj|���)�T\_:�TE���ǿ���P�3��vT]���T�����L);48j�D>iم��G�3�ՅvW�Y���6�_H5��P6k�l��jl��ec�;�#��u��.���.�JxB�DЪ�n|�4�dm��pϺ�.E�D�U/��85�b{)����t�N�#U�1��r&,��.�:eW!4l63"�.�$�h\9�c�R��F9�$���/c��g�W�ju�2��Hu���$�i�]x��*x�A��n�t����%�Rw7�۝�d
SK ������D�̢]��.�V P#b#K��b̏�I�����V?L ْxz�Î�C3*�!,(]Qq���e\���/V�]���Ue%�~U�Y���}U��f7^��=�IY�Ӫ��Y^�[�F�{����Af�2ݒh��4c|�u�e�mq�0Z^о��D����[-���[(.e�.�e�B5́j�ý��M�?I"��d>�y\��^V�m0ϛ�|o+����7�9o��Ȩ%��i`��%�vG�m��.���4*��mJݙ�w�����VX4'y��UulvKJ�+�m��|¥�f.{���7^���ݑ:7��ଛQ5�]�O�8���T���$7������ni�V���h���C�W�U?63�{�͜���n�	�b3����$�N`�]Q=h��� t�X��	���8{��ȏ�3=�SlI�S�C��G*��.�[�e���_md���-��E\j�ρ�J��V�vnު����Z�~�s5o��f^�Ws��(�c�jj��O^���t?�S���z,�D�2�=��'��h�����A+�$�����z�O��u]s���¼baP�&���!Z��--un���Y��F��X���L���4o�p"+Mʛ���x�M��iYiR�*O��(���=g���W�ַ�6-($tF�>��:���m����7�*un2/Bx@~�V�j>+Ou�^���WP�6ܧ���¯��uI냿���A�>"��x)�֤�-����OC�H���^��`�.�.���e1�5�^v�?�¤�K��$�p�W��Qݧ|ʽ����݁�}�U"��,����@��pЀ�.om\�mnP��O��J�x�z���9�zMx)�[�{P��D�d>��]��$��q(���C����5���:�2����G�(a�� O�b�X}���BF��_Nx y+�+��I��պ�z�֡V�U0�ʮ��T�$��q�Υ+�M�h+��b��/
�6��S�D����I����L <�c�Jjc�������mI���� g=�o�J�2���)d�\T|�
���S��^��4�E3")(((H�1��(�<�<� T�$IZQ>��o������è6Up���ç$�*�85u辫����Y�tc�Uk2X�unm�\��Z=ǝ�ʼ �j"2h\}R� ���c�����(Z��f�3sk=%Yt��>��Fe��(��[g�'N;B���6������*f ����R�K7�Z���A���h����CIk��㽨n��>�3T�2�B��53�@��7�I�0��؆,fp+e�NwB�}iWv�޳#��y���Yeⲷ�Q"C�?��JP��-N�WF��^�r�׍-Тk����a�e,$��o\��רk!W�ymeV��X���}�'7�}�3����ya�ڑr��0 ����[ ������*ޘ
�����G-���{�� ���I	�H_`�L�yyU)��=��f�*0�c�Z/S��Z`ӡ��^fۥw����x{�������>��#�JN��U��1�ؾQLg����օzezN�V��OLp�eO�����_���;�ICX
+�C�"%��_%R+�]Z�):����e�'r�m��o� �P���`��9�ݵt$��T(�/�` �5 �K�H��Q:��{O�CP@�2
���8W}�B@?)0B�N�ba�n'���	����k����U0u�0m���n�e
� � A"޻�)��Y���9����Fo�������#�#��P]L�u#�VVG�sѺbE���Z�T����#;�ލ�;2��)�Cw=0+�#ۉ�Y��W|�cd4�,�����ݿJ�!p��K�C���C$�����5��?k�,�5�0�#�H=Ѣ�����30��D��b
}�
o�g)���M@<�_��8
�Ca5*�[j�_���2(e���9+��S��C�z�e
e������z��:�������[/�LO�����8�l���-�Bt�Qj�BH>u�R�M�z�8-�9�Du���K�嫤�h��|��r��v���G��E5�Dkm�4�AܲL��Ȼ�4�5S��i�S/�?J�4^�`+�ꉒ9!j xf��:�~�G4Qj�9���{�0<�=A�"���|�W����Y&x5�$�s��l��Ԉ{�͛`���������S/��l��TW����f��L��QG|�=ִJ�<�Q	��������|8_+��[PM���a�Ԫ73�*էXQ��^=Ӱ3��iT��QO�'H=Ѡ?�u�H�5��o��Rm}�bli���!%�q��Y���ė��Cs��]ߋ�1�����
�}G��f�5U��IXC�Bx!G�Z�1Ě
�8�)�(l
�MV~_�%}d�>rI�����-!H`��[	��g^��9ե~p7uE����[�Q���@-%K5*h�'��c�'jF����U\�A�
P���\����z����^f/5b�7!�\z����:���N+���\�"�"�Cc�r�z`#��!�r��c[Wh@ô �W���ⷊR��D'+�K�Y4�DiAZHf�x��~;���@���z�A�k��±��9{�f�w��j�C3�[��9\�]��\��D;��̐�|�ǒg�r��C��P>c#Yȇh�2Y�zJ�_p�����[b�f�-�%0�x��D��
�r��,�4""R�$�B���0�=�(�u#)H�s�����<�,<�	��2��.GU>�%�T^�>�5�/p��x���t�p�H�w���c�9�i=j@G���}�Yϟ�D��ȫ�+��{���d�Lj}#�h��GC�<C�`N>����#������j�����E�`�?��?&kQ#nӪ0n�`@I3ی�fK�C_�C��g~�ky��m�蒍-�t�l�=�J2C%t*��%��t��ȵ7�(��:뾅�꒺���]�����eA|^Ԥۆ-�٣���y��7u�ǧԒ����8�>3mfi�H�y��#�{��-&���0ԩb�c~��9�U?�:ô��s h�Lʞ怄O��/ԗX] Jv�ΰ��_���F:m�[ٓ$�cW~�$үn�K�s��n˗���?WdO�q�[�f`ӳ���N���ԑ}�r��At��ݣc����3��q��A��9[j��:�aT��#p�h����\ܱ: �\�T�n��0j���c����_!:T=w�B��u�}�����~�{�Kz�EZmƤ}�s�%�gÖ���D�{�}��ZO{@���Đ��2��i)A�S�wE)_�HLA=���0�]�_�G������(�/�` UA dD?PlM�����@1�4��z8k�$�d%�9ɳ ��maB���~�[��:r��º��H�ڶ�[�LSa�{�x=��t��N��Q��j��g��N��o\C���nū������ZdW��O�?��g����}"~����'�����Cй�_�g�l��?����{������~c����Һ+Y^c�S^.�N�x�y���D8�����*�S5G�����C�����"q��x�He�T5��V��by���[�I��{� �@r,5I�h8[ѕCh�C�D5:(iZ�L�ar&c���"�F�h��+ ��e�xF�����YC-%�e�5�������|kr���q �j:�]�:���mp��Ԛ<�|<U}�(��Q+�	�&�TS<U��w~�,-@�]GϺl�jYq	���
o�U���c��^�D�'� wg��4���r�?�ZuS�cZ62�"[\ �-j�q�КR-�d���n
67a[�p�wx�-T�(�]��'��+���ױ��ۜ�X��3u����z<_6ۄ��j���_�52������1��lD2K�U:��f�+�=Ē�xAv���l����.o��T},2t,�lg�Sd����.���H��$�D� ��*0S?p����c�5�~�������/�7�"�®��8N��e~�ɣ橊#\]�ы�#�?���N�#s��:R��M6��o���v^�"�F=��
sԑ�ϸ(l#��44A�XYc�$G&7�̓?5��A0��8�䞜8����RA/cX�ﳆ8�(�U$J�ߺۭp�˭ϓǞp�Suwe�k+��7�"<X��!��E�o�v���%��i�l�[~2�o����������ъ�S��{	�o!�Q:�Q��G�<UO�ݱ1=�.ܖ���v0eT���C���eG��=��Q��!1S�T8��p���M�5Mm�El{�N�+%�*`� yE���t���l��0��Pg��z	|��}��,��pW�N���nk�n��;��=�;�&�=!OU�X�W`��P���sFf���_$.s���U>z7���?�Z�٧y���
��8-��M�r7�@jyC���iF�SYk�IN{��,?ȕ�R��ɧ��1���mΧ�ׁ�2g��ǲwcFzP�ڑphI��:�ў8�G�Wp��_\d(�H�8�[�/|�/��h�����8��,�n0���*ԟn�g�� ��et�<�z"1+u-z�{���k�z�ce<�䑏� `z�������Z�b%�+��x�>�'�!~��z����/�va$��8����|:����a�뻱�S��3��I��Ӂ�k�v&oY��ߧ�Ϻ����+���7��$�rl��J�7f�
����j��Q��dc8��9�j���9nC6t��`d����[�l��4�5""$A�$�t��� ���K�Ɩ� )��k3{�'�OQ�-���'����gx��G	8f!�;�8�����Isr�4����GG�bD��^w3�ҏ����/�k7&��[�-ݻ���t~��<�&�E��;啌��0:J��y�Q���Ú<ybH\��a�=b`�}-�7�ˏ�h���(L�.Kp�{�UWwx�!RK�D8	��,��g�m�9헃Ȓ'߱[���޾g1t���I?Ř��}�%n�l_{V��L�!{b��Q����ŋ*빳�9�9t�����:呚�o����d'|d=�	��E��$wӏր��=0��k��G{��R�ݨ�i 0���_��U� ���\�GV���<�/����� 5�yF?���%Q%���5[ i�{B�=~L�2u���"x��23HpS��1� &+�I�o�8x��)�=m.�Hp��Τw��:<+w�M��N�$^�D!�	�V��VT��#J<C4Jވ�p+��ܝ�m���*@��b�37�`���G1U��������������2�����{��=Q٨�C��yqx��h��z	�s�	}D�	��4���|	��,�6.n�,�	�,�W�t�l��p׭�D��L�#���	�U�Ə��wH�O�ZV����)(�/�` �1 zEE��M:-nr��A� q밊�� 9e�C�h���h"��e�J�2�Έs��$w>f�K碉IC����imo�ɖ)� � � ff�+Ϫ;�u��[�9+�$-����Y7�E�r�RU������k�9H�_O�*����>0dby�"|���s �t�E��T���4�b��P}��Gj�IᏔ��U�U�p�)P��`  I %��㎡������|��+���F�c[ni��W����?uK�0K�o!2|��	���x�V��G�%TSA�j<�+C���?������!d
ʳ�p�#�a��є�>R��9����H����j'_�Ά/�ͬ��"��j t>Ҥ{V3s������H�%�Gm��O5s�3�g+)�OD�j�Q-6��4���f��DX
&˕g%�O��],���!#�G�$��7�еe��H��\|��� ,�A)|���	�d�W.A��I!=�6)��U3蜙�ڇ���I�Bj�ݕg/����G&trK=�:`m�	c�]o����̻�{����}Y3P�m1ﱡ9(ے�bK�=�RfNF�A�d��GQ.��AyҘ�������R��s�b���ˡ���K8��*��;iBF��
��n�b�2�~[4�}&�^?$��6hf}`�A����G�;iP��@��Rw�������g*	ʳ	԰H�L-?[���Ry�\�匩����z���!P�4��"�dG�p�gݰH�F���N<���R���CQ0w��M:@��V�߉B-��Ѹ�~��~=�s�/�ݍ�A��@�y�?�J�HR-p���]\h$n4(z{�E}佲[Š<iʲ��p���sq�ET�43�|�V}�Q�L�Lò*���n�&r(z�%�&�nͰތ��� �Q��p��R����z���sлԥ�����g����p,U��� �{�O]]y޳OU��$ I�L}r�O�:�����<��)MQ*�1E1d��(�d2��$�a(Hr����#^�
j@gc����G�ʆM��֙.V_�~\�)k駃2��-z�zS��p2ً�f�`Z�V�ޚ'<.#j�FN ?�~�{1�b�����ѹJa�;�5a�����a��k<v,ڝ�Y��P,�;'O*O���n"R���IM����E�v	:<��'���X���X�l�@g������(�42�}PS�M����zb���,T���|?Cy,�����-�|���J� ;�on�BA��0^o�&���C{��`jL9n�`l���B�ﷻ%%�����4�Ϧ��ѓ([L�E]o���uo���ἀ3>�J�mc|��gho���[�����:Y�P�LȻ^\���������!(�F�k\zݔ$);�M��,��B6u��#	��-hƉn��&�iA���M�L߷��N��J��ӻ��vXVV�9�Y��ܝ����isF���О���4��T9�=�����q�D�E~�ED�ШU��Zj��������O\dm�Wh��/�u���-0�y���ކf)W��ň�SМ��SIC��xU&�#�x�K*��\����p���h@F"$R�K8B<}���,m�(�/�` u: �^@PjQf����U_�[������9�%#6}?�s�yy��%3�1�m��c@aC|dk������2>A@f6R"��Y�<T�]�`��%|�VwU|(܏���wm��C�Y}A%�pWTߵU�$�N��޵�iȊ�٫9M���+����m'?�(�ɸ��R��ݝ��<��Bj%�yj��}
��U6�e����Q��+�	5#s`���Bd�c��:�@�SyVU+(�a䢕�2ƞ�O�6O����(����y5ceF?�S���P2���*K�ಢ�j�B#�L:b��}�À��#�`XHR�w�N�5��V���-�BV�XZ���g55��}���Ǫ��G�Mn����E����Z@�i��f��m������]۟f��@�X�e�ދި:#u�%�+MV�F��ܹ�'v���!�Q��b��80O��
y%4���i0>I�c����	ߟv�@��s��M��~�(�ܼ{۞����v��@�N3�[��V�ů|}����?՟���kz� 2�Cl;��������Y�E�������7�K.��ߪ���K��͹�18�8{ɧ��^�ҒSQ�^K������-�q��_y��:Kf���sH�v�Bh,�t7�wm�Vf�eQ?߻��_����޵ŕ�`f���w
�rO�03��&�>#N���s�N���DH3�>������A��ԡ�q�p42��&WӖ�����N��ɭ`�ߵ}�����^k��,x��)�>�NeNW�sZ̋�w�6/�m!.'2#u��o�����]�]ѧc��޻h��Y�+�xQ��;>)���"�-B��Ɩ�(Q�A��ȑR�5�x+�+qe�BJ�F�D3*��ď�<e�AK��H��SV��Af���m��s���VU�_�w���{-����@��]��W����ZV�e#w�2���ccim\�����?S��G>VC+�4��L���ǉ��F���@�(4�c�����f��xns��~e�f��8�~�Vw=����=�t�������V�b�U��_��}�%x�[� ���{p�exV3B�p�����kr�k���*���y.���wm�������C��L��ڞ<D:MpQF����ڶ��ɩ��n䉖��_@}�jhԆ�����U�T0�p�vѮ���	w >�j(r�U �!b���:�I����������O5��pw�œd�MV�a\J&�	�.k��Fkk|����5y���<{��p������t���V��81�n��)a��W^�	��'X�dCT�?����e��c6s�fw@�][���m�.jg���=eB;�Rr��(��4Ɛ5"�H��$QF����i�$S( !�0)�Q?Z�d'Ѯ��e��nk�k���\��˪���|SL��tЪv�p+���WE̡����}a+��?n��G&��1n^�G���+�Z_2}�GP,"�ۘ|mv�*֡"F#�ZP_a�>	��/P�p�} p�Ĉ���`��o@��b^�|_m��c}�=X�B��RO�Ax^b�I�9A�a��R�,lH����G?������%C�����0��q�lC����'�`^�Y�l۟�a�>6+�.���p޺1����Bgnbl���"G5��S�>������Y���M�ccL-�y�Sf� Ņ퓫Z8`w<�_^�k��=c������*1�y��7�#y|K�����"�i[Px5�f�%XP�âm"�t�������p�+cj��Q2WL��mM���͓���9Q�a�#::������$q��|=�$RȻ�[�b��[���
O4*b�����(�xSJ	!HG��U(�/�` �H :y�: fRIk�W����.��N���!U���n`��J�򄶃��q�Hbg�ZPX� ����-��)�������߽�؆�����f��i�*�4�4�Eۋ�p���m�n�Ɛ:�ӎaRg�9M����bO��Kp0����p߈�m�i�{@�n�7�݀�߭�����ŨVv��b������bĶ�߻B�K�j��-�ʌB[u/񽏉�i _��{�Kh�&j�������k�������Y�\�{?�������x�:�=����~�>�!��gn�W�(�0�s8@V�{�U|-2��O�yႽ�T|5J!eF�`ݜ�"�*��d:������u�����W��]�?e0ソ��k1
%�0��>����ZDc+�e���������O����Zl���{M'�`��/�#����jĒ�� e.�o>��/�S���%��!��X��������2��d�5�PvᜋH��e�X&����K-�v-��C�*���K� ��3�o���wC�@��uO��9��N�H�ǌ�)í=�o��x�6����>c���{��@��?�;H�ށv9Bo�f��CqHԦ����������!��p�q�y@?V��-��D�����~D�v?��Bs�D�}h���ԙ������ϣ�nh��|���X�#�D�}�������-���SX������?-[+��f��:������-C�ᯥ�^�m�HC�|�W�V�:G�
9u~꣖]Xs���C���ߝ����Q~>�c^�ڿ;�X���b�f�]�.�l~��h;����Nкm��h%����c�{�.�s@�F�C����q�\o�0�us���3hu8u�b�z�]�	SW��ߍ��r��H��]8��$=l�妔�+��� �_���i����f�m��W�wO�*ڶy߹أ&��;1|���Ӕe.TC���̤ӥ�f�	qREs��#o�7�	�F7 ����a��L*�+�B3;;�C=&�����q2*��I6Jv���n��S'v�񨙒6���z}v__��+�M�LY��*˔ReT)UJ��X��dc��8i����V�V0��"�pk˧Qva#���R��7q(���>iݼ�ɹ�ar��e�"���sk҅���8�A)S����]�W�5̝:&ZH�K�ڣE�!E��L�ev�FV�l����R�l�L�&Y���j�%}���X��t�WU�f�t�iK��M�r]���U���n*7&NO�T����qzJX���1�����VӖJ�qX�����o^�X�r�í1�d�Z:ev­=���|�O�}�3��?��Ba}��2�0�
�.G���Ha�0�0aðE`V0*X0K_s�V|Y}���( � 
䮯.?�\
�.M�L�L��d�o�-$[Y[r�Q�P�!�ZN�U�e�]FeY��.d����B���AàI(�.�|�y6��\&� 0 ��Z�F��L�+!ViVF�7U.��*9�͙*	�L�A� �4�3�S��w� K?e�SP2M�I�E�-Y��$eG�N*K�0�/�.�*�
��U}����ğ� q �M����Q�����xf,N(B"�!f!!�=+uۆ���vB����N䄬���}�"`�XH��N������%s?� ���k�����_��+�yr�:�ދ��_���6O��J,�������{q>��G,���βuղ��,��B��vz���n�X��j⿽�����n�:���t9*�ƞ��iD:�����V��0��5""4R�*!���l �*�$)����$���K�a�i�|�/B�("�Θ��`������QJ���-�������ui���K�����7�؅��>�P���/���K\���4�^�U$No���	�N�.�o-I	t��6+L8=k����`\�=��c�ȨwY4wr�n�����Ō�B($���E}�QC��ا�ƍ2�6D��D[<19=V�Zly�w6�D�� ~�L��?D~K~R�4�����bM���tm������(�ݼg^b?������+���^{T#��։2|�1�<�N/:6�r�qDof�2H�ƥX	v
lQ5��ZS'U�H��3���iG	N�fO{��\�g9�;B/�R�w���>Woq��<su��cr��!9Eq���qr�_k�Z��h%ՕAq��7҈��±{1�߻�Mv�Qg���1�Tj�����w#/�s�5ĦO�j����I
����xwLO/;۷䗝�3c0O�XcP~ʎ�^7`�`����`8�Z�+f�Η���ǭ(�/�` v ��9@�McS�4l"[�1�Z�M�\+xT�D@D�����٬I����`�V���Ede�p��` ���rwK�3X0,6��6�N�gd�O��JX�U���}?}<}c�G>?>9�5>&|V|M|E|�M��{�=��u�m/m�k�joi�^{��ۚ�5v�\Q#�F�j�d5N�%M�4�h`�Y����ՙ}f��f ���0���-�U�=�����#��o	^�<%�x@x���-���c�hG�Ca�YW7�.�N�.���NM�e�s�sl��������������D!#��1D�l�'G�c�K ���Z_�ġ��20�|�)�M�0\0t`l���E��/�p&���T�Rׅ��&�#\Bp�܂e�-A[�ތ�ݐ����i��ekŲ`e`�ˢ��CN,d�\a��Ű-�m�686&���+;�x��r+^֐�8��Ԓ��a���2���Ѱ�d��*7��9�;��Q�*��R!C����F�#f����ʚ�&��-!�A��p�ڔ�)�1%c��H�RK���#
Q�K(H��=�{2G쉘 bR��pR��V$�*,(�A��	]M*�NU	�P�?07�`=`s�p��a��əl-�����TR��G	/^U�xH	�2Gz�D1�dă	F�tQv-�zS��a�kEx�$rr��z����E�U WW�ug�,5D舐 �9dmH�L!<�h��
�
d��?���|�l�[a�J-(Zh5�U&.�-�,�A,3�0,,6W3�&�ܬbXݡzR7�pTTT#j�=��Hꡭ*�jR�U@)��N�J�F�*�*��;�v�N�MyMMM��1���#u'�&U%��_T�(?(�)�%�#8�p��A���Ɠl��W��{��􆆕Fw3>�h#�*C*�M��`�$Nr��45e���$��䋷:^dxa]���t�����E�~-Z�Xd��E\�J��V�Qa��Ih�1)��ؐ�3),�D�)	�#���#FU	P���pB�	%�^% (�g�d�cH�z	�H�sD�?F�)�R���QD��"΄H⑨J����7P �@�9��1�`����|�f:�t������i����Y�S0�W�q�������؛o�����M�W���>z�x��1�+ު�;ë�%��yx?9��m8�p�q�qjq>q�����S������f�f�M���56Kl�lN7��Z�=�0�f�F4�4�4Ь�	A��h�f&b�^�5S,S+�F&�L��ifS��żb�a.���s	L0�\^^^�]�]V/�.a\]J���<�4c�f	����#K"��XJ-3+�T�UZ+�TjUΨ,Qy�RA�'%$%�eee�Ҋ��r��<�8�f�ˤ�I���5&�&�&=L>�����r�m�e�b�[�l]�n�[�{Ս���u't�.���Nr��:..����� W�+�+�z%%�Hz�$�쒜�l!y$�A��$�;����H�H'�J"�"�"�"�"UD��$��i!����	"?!�@bBJB2B���y�	�H����ߣ����G�t��w[�}��mآm�l{l_l���@[	۞-��[:Z�֫��>j��Z����L�5������К��e���H�(�������т��9�p��4�5*i�ш�1�QCcO����Z�>F<�-�j�L�0B1�`$�X�1��"w1q1�"ܢ�"�E�������w�ZP��C�3���H�Ȗ�����h�h!QA"(b1q�1q�	�"��2���!�a�C,�N�q
.8�c8i�5�3�>1bh���P�aC:n,���s��\�X���K!YaW����B�ʅ������{�v�a�z!�AX�p���Їp~���������������A����� �1�\��Z	B	:	J����6f��v�0ٳl��,Uv)�"K�����7P���$0+PG ����c��6b� �1�p�0
P	��?�?�?4^�����M����kc��64��ߣ�������ï�/��������a�C۽k�=��u���$D��ѿ,�"�3�W%�x���3�;�J>';��|�13�S���{<��7:�c��fG�����^�3G��S�Bwy���JӬ{��}lý��p�����wm-�#�p+M��r�-����i����~u��l1o`C]i{�~M�>8�Q=�E��s�c�����܎t��+�f�~l/��|����a��-��E���Qg��\Ⱦ�߼��Y�/j�瘣��k�#u�[�y���l���e��>9��d�J��'�� �9܁����+�km���ͮ'S�L�h��[�����c)�7�}�o�T>��=k�8�>�<u��O��m��� ��FW"��I�1#����K���'�~���i'`:�h�� �g�o����,��<��>��>ƾ~�E��g��|}��.�z �z�}=��E��v�����.4����6�S���n'�r����&��vzu/�궾��^�;^�S�n�Ww׫���f���^$S��4Ƨ�	/2g���kd�[I����:���N��{���v��O�����|��x�8���}�:�� Ā�.��+�x<� ���7*�T4
����7@�@�@�@3� � T���i�����3�����g�-��Q�O�L�*<=x^����S�����X;����l���j�4f1F1.#0�0�0�0f0�Ǣb9�XS�+�ۈӈ��^�W�S�`b.��J�$N!.��y��pf�1�&����i�p�pS8),"�!<!��a:�M0"�|<l����H�[�`� p �:_˯������R�0�D_���~;�����wc}�e��B��n�e!�"�I�p��B�� X]l׍.�{���츫m��ן�[����U�8bM����5�G��.��^�'���9�ˠ��D���p��4ի���ǡ㎄����?�Q��<�a�Ŀ�P����JV����U��G�V8��N��*�ŵ���O\R�z�,�Y��M:�,R�"e�03ڑj�'�.B��?����&��!��������h���\��J�8}�s��)l$������Gj��M�|���b��z�o��g�P�R�����I��h3�������������zS�w���v����B�C[59���.TO��ɷ6ۇ�Xg�l_C�\-�ASﰍ.�r��u0�vк� xҞG�q�v�}�(}�'���j����nG��n�!���9�4�����N;�w��Sv�}h����Au~�:?��J��
��B#�Ի�GNDW@�v�T�c>����z�n��<���+N�|#`�%�v�z�ԃW0u�{�w�ӡ��Ô;zc;����<S��)�홵��Xw��Ѭ-t�~���z�����#j��N����^5֡��!�Ᏻ�����tлl�?m�o�9޳!����m���v�]u ��3�0];��r��{����c�u�2e�MwHZ��N��B��vϣ}�bJ�]�]]�<��b�����xϒS����TG���J�e�������/t�Om���n�w�.d��M���r��gl�.�.���C�\��>�v�������h��m��X� ���O�3�2���
�n�e;���XfHT���0��@s�(O��\���5$on��:O��s��~�vnC�P�U�+Rh;���5��B7(�/�` U@ �p�8P�I:ZX��"`�iE����g7����b��M'��	�

eV�L�C��2�MRNYgk��k��T�fR�9���S3�\G55��n�QeS�ƫBv�h��n;c��_�Ng
��,���E|����zd��)|'_�N���;9�;��w������h	��Ì.mhG�}�;����f?s�������ɳF��Ŝ壙���o}~�����0��>��Jp�-�����C=�`�2 ��v4��~�V��_�lB<��o�.q��Y��9m�|7GC:	k�g�3�μr����M4�y��B.G��g|t�-�hN?#;��hGa�_�֕X�8���nyƯ��0O8��^ƅ��e���H,�'��3c���.�;	�w��$��|c��m3�	��j�Y��	�m���*�Q�ft.O�e�ψ~6���<�h2��#�X��v4~��Y��sv�0���ŷX�����SzY�[�i�q�3P�U�p��rR�CU���y��
�ij^ȧe�@>�:(N�ff�s#sW/�o2f/Z�j^��d�&�y!���8Ǳ�Aw1q�ιn+U��T��RS�9��^bO�4r�}S�r�e[�^���R͟CP�n���m��<���cF�<��|���9����AO�k݉�yU/<c���^�U*O��F�v3�}�l�`�31ۛ����$f��}OUVq���M�Њ�L�pr�t,߸W9W�k�kִt�Y�V%p�K��`�L�4���Xڃs.��GҰ�w ��ZU��௛9�Y�=�W�e�r^��׮�k/�ڽ��YlP�pTĪ�cs:�)��L5����^�i�6��0��C���܌�1P�q^�~�TeT�l�i��M3��1�n�0��4��:��2gY֢�B�`�p&N�3�^�O`�5��氖���l&dcs�f!����)�b�P�c��]h�f��Y�`��e5<N�q���:�8���fk�r~�s�wq�9N~���,�v{�`Ϊ(e3�;S���cT멊ٯ
�j�b��*3��H��v!�]Ȩڅr�]8�څ�9��Yʕ��XJ�j*�v!���������O�}*����Y�>9��o�w�RQ�����?I?w���C)W���ߞ����}T}?�[��������J�}�>��~W�>�磢�)���(�+w^N��tR��-��K�wQ�)�wι��R�tW�)��;w�䜿�ܥ��+)ݥ�R�wWʽ�r?����)��o������|gE|Mh-K9�g���%��E���1-�UiM�-X��
�+���K�����b�A^��`o�h�vs^h�n(��sg>�ue.�oy�hH�$8�W���I�,6��z���JѯT
���A�����Ȍ�H�$M���!�s= ��L04"3�
��H��
���$���$jh�ܙ�����P��w7
��KKb���!BR��(b�em�	�h��.A-�L��GIc����]Om{/�۞���o��wj����^=��i�H6~x� &GP��4I�K��}.l����ɩ�i�X�4�o4�.V}�*�+$6�@u����oʟ�\�e���~�o��3㹏:���ϳ��Q�~Ǽ�8��s_��s��'
���
�4>���*f'����iC�s���>��7�d�<ybSܰ��[�,���z�4+���n|gz�?���c�|<��:^���ds�i޳�y"�^<4�^7�/��y��Ս/��������2�(,0�?�f��>+�Tm�3R��x�7��yp������ ���`�u�(>Ԯ�ī���{�Tx��v�y}�xK��Fp�C�Lh{,�|�_ծ��|�1��|���`E�h���p҆C���;�5{��/����q	��|Vd��1&���-q�zF�r����|dt��;�h`g�h�7�d/ڈ�!��d&��Y��m�1�}� '�t
p�X����|̻d����oS�9}�vt������Gtuxyq#����(�/�` %Q ڣ"K Xޤ�sw%Q�R�-�v�(?�wg�ܡR�Pg�h���*!�%^���%,|p\����2x�fi@��֒���)�(�ԕ�f�/�q5��?��o��S�<�{�O��,˸���Er� ;RcM��l�Z���Pa@�ڨXU��*@uQ��Q}�Q�P/L��@�&�T�|b�yf�Y�ef��6G�G���5�&֜��G�m��Z�ah.}��t��!��ux��b	m�Cd�,��X���˴�	�υ8��9�����y���e)W�ss�E,ȎT(���zPOP-���F(�
�Y��|P� |.|ԧCe�j�L-S��&��j�UG-�bU��* ��"U��#��C�B=)�z�sA���D�m"1�L��6k�/�)S�Nfsk^M�yD�i<]��4�bzK[ibG�Ru��!n��0v�B��<.�В+f�,�m�Lv�ٯ�Z+�M��s�>��9�37�0gr���G;��Fƹ�;�����Q�G:��9�nR��HG:G:NJǑΑ���nǺSzdDǑ�6O��M:��H)e�9����c�t����sNJw�I'��h7mʔ)�N�qΑ�qdG:u�N:R�Lu<����q��:Ч8�Kq9�C�݉�i8��wh�M��&~C�5_�J�M'�^�{�C#q���7�E��jMv�&�hZ��4��� >C�;��:��t>�dڇ��1t��Ǵ��/4���.4�ټ�^;�B��
��Sh�Qh5��\��oi-���W{�Nk*M~J�9�/5�Fꣶj`���ðf�K�E��fj�N�.�r9��E|[�U�k9��1">Ć�g9��A,�����(������ṗ��^[�	��W�7p�՘�*O{F�g���e�ʧ��_�n�Y`)��XN��0
�Oޅ����Y��N���v�h܄y`=��x�߁��¿�{����8�Ӱ�=�"�d��g6�����|�n3Rq��E�%$hk렍J�6/m_����q�L�7%n]ڢ�aq���έ�[ �ߐ�/����M·�{+{����?|3{C��8?|��}���{����ʟ�����+��b����b���/���s�����ʹ�'�}�#7�rj���!!�G.j����-��*��� P?t��>�f R7xx5�yM��N>��5�ڝ�'���i�V�6�������UI$P���g�O�3Ԃ���e�?�3��U2�E�G�4���Ҿ[��,6�/bM[j�$�5��!��-*�wD�>Ok+���gD��>�������v��B۵-�&�v��GE��h�/�H��e���	�1�?݋�%[��$P(�����.8�V��xB�,���F%vM5Y{�(	���rU!1*��U��
ɲH_�d-�	�H_�d-~��WB"YT�kL�H咚���U�c+�
��^\RMr�_�@�%L�,�U�U�oI`�6R���R��ʮZ�ˈ��;�Yf
k´2���=��%N�V�i3l3X��%`�f	��i�
w�t�ٓ����V��Sɜ`��k�V�����*�D����%��B�M&�9ejC-�ajB-eF�l�ű��7����5�|2��j���E�UKcg,�NсPK�O;��X6���N���V�z�O��ҝ+D�i<D�Ѽw�O�i*^����Ӊ>�����}hB�q"��B|���;����>��|��o�os��ծ�����=�����U���M��ʫ|?�S��r(�;���\��a��^�K]x>�XzY�w����A	�ֿ��[����nV�Wr$�J�V!��W��#?ê�	�؏�"H�<��ǌ��B^v�~&���݌�y܃/�VV|��<8��.v$?{�X�+0G��^�VF>|��(8���ȓ|��g^��u���� ��nv23��y�3�z���?�z���?|���Ǻ�ן�ȇ��H��G><���`g��\�i��4�ӑ�xҍ؞u��Q�O����,�aO��a���?�J��'1�8���2, 1:��L?a:]�D���[`����W^������AN����^�E8�h�rf[�E��W�b��-P���x����Ͷ�TL�$I�}�Q��2��x�OWM���i���*R���br�1�F�R2l�`1%19)�B,&��c
=��p�4�c��	��!LvQ:0A��g�+��ب�4��bFF&)I�f��1��V!ˠAc�J��3�K+�P�zoh�yQh,./fx(F$�Qm�jO��c@���=dy8n&R���7,&���i9f�����\
�wS�`�iHL��l��w�������J�*�I's����`z�?�����ۦ̦F"��@�HT&�(���,���{�q����Q��E�6����V��u\\�mi���&��W�ϽE�/��(��i�9sZ��@��?�cP�۬�������)Ң��_�gR4�A�6���W�c	��Fv���M�L�I���nS�:\��u:���G[0N{ջFc/=W���2|�f�n�s�0I�1L P��s+��Tc����p	��C�Q�
g��e��/V�v8^B`$�J(�/�` ] *܈+E ���d�M�X`�M�(���� �F���'<x�㿆l���Q�`D�����6���b�H��E�R�y����MSO�I7��I1�%��Q)�$�����:Ҟ2�E����
=S*t
5S(t��� �d�G���;�F��L}P4ڃ�Qt5�eT�R2�9h��\z�n��a��_���G$�\�?dI%�$)A6��T�a�2�Wy$)��I��H����Y�ѱx���W|�퉎�n���z��c��;g�v���^�=����׷>�a^³��/�%W��Ã���~�$W�H~�F^�	�ȇ\ȃ������8�s�vn� ��ơ��y(�z��x�)�2��o�%��g��E�>���O�-/���S�¥���e�>%�&�(Or�󿞔s9o��y �#�<�����͓xG�H<��������oĘ#��=q�k�<&>�<���p��Ώa1��`8�|��b�q)m~�:�|o{�_�6�g�l^l�l���y2I󏴋�I�+��R$�/�E4OD�h>��<�Ri��6��h����:C���k>-=eދ�"�RS��˼�<K=�ܓ{=�'�Y���-�%�*$
�7!M�<�Ē�r��[I2O%�d�� �$���O2�$���T�y���<.�2O$���GZe�*{d~G��<U�2@Be~s3������;=>O铞��H�g�,��}Q72�4�F����i7���Y��_�1ӧ��]��nš��gw�S��/p'�ĕ��������y�y��H������|͍�`/r�{=�_��9��@N�T���^�)��\ʥ�ǣ<�y|�K�w�&����>����q�y�r��8��m���2.���z���,�h���y���te���˕��.�VAnI��3��phB�,��[��
��]��\]��ᘀe9rc�1]Y���K�na��n�d��c:���n�.+j��uw)���NwZ����إ3w;�~���B3\]�V�v�v�W��n�,�3åay���9�_x)�ݥ����.�jW�˺*Ù�7�.��p7pL7��-��p`����ɕVH%�ҥaY]Y]Y]qJ��Dhueu�S�
h�����%�-D�r��p�B���a9�7��@r7����� B��s@X.,�e�`���/gt|��ґ�*rp�����i�_�(2��H�2Ӱ�r\Rf��)�pIV(( /��K�w`���u�+���srC,����ЄTB/�
j�	h�������@,P]tf�n�.�
��e�2�3�ȟ�i���= 1f��b1��q������r��6�ZCh-��Y?�g��ճyvl��eb��+�u��*�sVήY!V��i��a�ևE�=��awX3[f���zm۵8,�Y"+d����ڪ��<v�R�mm[۩�ڨ��4je,���@l;���΅m�b�3m���]�N=�N��N��ھfmbm'��[��U;�k{�=Gھ�����~;Z�a����Т�Ԣ�ԢuԢu�D�0�����h��5��gJL��1�|)}�cKو1��h\)�����B\�C��rb-��1����Q�a>|E�a;�(�X�%�Èr��C����Y"�n��d�l�P�1<E��5L(��<(�����-�b'R�aA	��p���40���c�=	g����W8Nr�0���PXL:aLC�x���K�i�k�ɜ�%{�ք촙�����6K��-�����Jj�X��hm�h-�<������l3H�%��[�����O���Y2�.�d���Kr��Y%�f��.ݬ��ͶY0�6l��-�UIf����aeX�®�9�Ͳ���Sv����T>�VF�{dc����@�>}l��{l�M��N��K��zz�Fm���rznnom����[RK�{%���5��>I'��?�G�ԑj���)#u��2=tA*H�x ��N�dzv?�G	����&����??B�(��i-�h����~�!.ġ�U�&�D���^i�#Q$
v)�R��y�2��"��7�F�ï�E�u�D��C�8���ʭ[�*9�T�J�9/y�SrJ�9�� k��T�_f�^�K]�p�#I#	ë�*��*o��od�k��-�Y�_���N�}���u�5	[�}�c���?��pl8�[��ǖ±+��p�&;�� �n�c/���p�c��9�5�{}żN½V�y��{}�ym�{]�y� ���z�Z�:������ڊ{� �{} ��� �5�] ��ƾ���k[�cGql[9vr��^wZ^s�^���޴�ִ�1m�-��qcK�^CZ^?Z_/Z_�m�(�ׄ6���]��m����-���4��5���f������n��f���X^�Y^s-YKY��`ɺ�%kp�Z�d��d�[��-Y_-Y'Y_#��6`]��Z��:������ [���.��Gm�O���C7�E�؉4�!�mHcW��il)4v���~Bc;����؀4���G{�Gy�G{�Gy=��ƣ����fB}mG���ZL]GMGc+���hl9;�Ɔ�����m4����.B{��&B{=��z��Z���u����[��1�k1��0�k��`�����+%YǴ���u���Wښ+c���E��!d�M26Y{���26��5Uƾ%�od���`�vD��쿎�	=�����c�9���b����N��h�k�k��.�y���ck��<��屟��M^;�MiF�k���m-�I��8��z�X���@SA�DJ��`#4C��iC*^�ߟ��C�)V��d�/�=�7���5�ԣ�_��5St�E���+��Tm'U�H6��ʲ�����Eֶƿs��Y���Sr���K��R���ǷR�Iƽ;��r\	�����oy;�p��z��=p�{����̖K�b�b2& r��!�s�8@J���(�/�` }Z ���,D@�M:�:��f/��tY`-���ʇY��XT��Z�u�>��s_�,R�D������hI)L34+�$S���j~f�a�e�5,��¯,��«,��§,\�£,�,�g�p��������7z�:N��a<8�+)<I�w���S
7Rx���(��9
���7
w��2�F�d(���P���`�w��@�ܐ�%�N��H����I8��kIx��cI8
YBj�Ym5�}f�ì��ծa�����ն��UV��jOYm)�e���v���Ym]m��?��ӆO{?������$O��i�y�DO;���G��T;I��v��Rm#�.Rm:��R�9�G�ߨ��.C�Ө6��F��П���$�'�p?9��d����8m0N����i9��I��Ԯ��s����.�d����ZR;KjcIm򀬒II���� r�l:�6��6��6��5��n�5��5��5��5��5�6݅6ͅ6��6��6%�� �=����o�h2;4{�{4{�{���s�w�o�8�h0��^���xGK��v�>����yG�ѡ�����=/��V��Hy��ܳ9t�$}2��$������X�D�Z�*�fW�Y����F�j"v������V���x\�����q�j0�j/��)�O��|���+<���$�� <������'�<��ୖ�v��<�xJ�<�}�j3�O�'�8��㔾┎�X/��V��H�zJ¥$kR��I�9��i�l�ڨ՞�I���y��Y��9��Yh�|f�؋�a3�$�X�#�/X�,k
����ɲ~`Y-�oY'�X�&�%��X����!-�~�%�C�����5/�)k2/i	^�Nk9�u��Mڌ������ʺ	ë́�^BY+�HqH[qH?q��8��򏉒u�d�&���H���'�;��c��,��m�b{Yl[�Ŏa�aXl���Va�SX��bY��a�y�p�����Ö�ak�Q�D��V)�����G�-G��(v�M�b�Q�,žB��Pl2��E��(�	�}E�p�U6����a3�p�8��I��s��Fbw��Y$���Ab?Il��,!�ql\������a�^6N��e�x�a�.l������6^�Ƒl��Ʒ���p^�͋s��R��/�����!Wi\�#i�H�r4G�uh����x�B�Wh�
���x�c��	���\���C���xg��pq\<)�$Q���x�"�Nd���?�8� �d��9?b�El|��/ٸ��'�x|q=�i?���{��_zq�/zq3^<�wC�m��(��P���pO�qO�8Gȅd�Mƿd�K>}$� Hx����������g��K\Ƀ'y�@ޅ¹P�
�B�Q]��
�.h2.�2h���qX���-a�-,|��kY���	x�3<̓3�pE����P�
OC�h(|�8��\��5�m&��������Nw�m.��%���6��F!�>�K�I$Өez���ظ{�f����4�Zh��l���'�L�L�L�����@�j1�ڇ]�î�aW��aV5{�e�k��.�z�U�eUoY�/��V�
�Z�^_�k+{]e���������Q��^7�x���eZ�2�dU��Ϫ&`�l\��ֽv{�c:��ֻ��i=/��k�ř�K�i����w�k��tѻ���t�j;^�����5O�o��ǴOu��͋��0�����M�j���j���jFT�"����B4>�Ɵ��^+�u�^���<�:��Fz]��t���s�:�^��k7ʴ�t]݆�f�����C�zU���NCU����h��.C���5z�F���k1�:����6��.��ŷ�k\���Apqܵw�f�T/qq ��s�t�F2�H���!ymH�	�� �oe|�8L>�#�8�x|G�6J@���Ey]'���mT
�Գ���I�7�tɴ���#W��f�L2�%������5��ǐ��d�����Z�:K^c�kR��s!�g;��D�2��M����`Ss��7��l�6����M-��v����@�:����������������K-���CS����h� M턦nBS3�����J(�U8��p@K�&�R#qO���m25�L=A}@��$k3�4�MڈM��MZ�e����`Ys��7X�l�I�2y$�����-d
�$ �:�H�I�J�.�@8�nͅd�{2�v��^��j6��f���/�]�fw��+�me��l6�͞��R6;�fC��&���ٺ�n�٭�_6���^v��M���x�x4[I��4��f��)�6��"ͦ��(͞��q4��f���24;�f���h4{��øl0.����e�����̮�$Qfϑ�f2�Lfs�l-��%��d6
Y%Q���m�fQ���X�Cl� �5�Z̶�a[���y��:,�%�ZɢN���C��	���zB��P/=�Hu�k��V�P��Z�y�#x�x��������
��	<�n(�6ںm�F[����T�(��P8��pB�qB9�L\k�|`;	�#�(�����d�/��D�%[wIAN!�>�B�#�5j������V�N���3{}�^��C��A��@��b�i���i�iv;�n��v��n_�m+�]e�����ݖ��Qv�n7��%{�d����n�n���]Ƿ�z��]�y��[ڏ������]/�k��m����v��M��^�V��xN�y�a����<��<�xN/�V�9���ƣ�J����wt;�N鶑n�6�F��ݎ��otۍ^���m��6�i6�4���n���it��F��c��Q���pK?��r�b�v��m�ඝ�m w��m?�mHfߑN%�vr�(��d����(�r��MnϑN 	�2
��j���'�I�CNKP(�/�` }[ �,D@�m:�Q�%�-���u�ٳ�1�GT�=����g3Z׻�WPp�]��a��H�fh�B�R��qJ[����V2hS@J���Vv��}��N��Ϭ� Vv��}��^�߻�K*;���T6���� ������h�)�Ee��d�Ѿ��o.�
��~+��8{L���aR6����@������A�-�~O�o�{�����o����a�'���{�{I���[힢�h���vW�h���J�=&���)y)a��"ۭȞr�ݲ�mj�����d�M�Z�d����{�)�)��x?c]��q.֔i֔g֔Al��u]���l���ϰ�cX�/�����u�ºNa]���.߲q6��Ƶl���_�8W`M�dMy��rɺ�6~Z�H6�mn|5eL�0���L�8�H�H�d!�$	QS�QS�4���H�z�k<4NG]���4C]��q/�'�P�LBO9��Bg���ht��B��n2�-F��h7�F�[�n���v{��+hj4u
�(h��-�vw�n.ڽE��hj+��M����@SW��T4uj�(���5#�kE�� Z<-.��UZ�-އ�C�i�<�x-~����SZ<�fJ8�)�h���\���^Cs���:-^�'C�������ah��hJc�u?�N�D��$Zw�)7픉��<���`�!0u<d$�m<dB��;�@��}R"I( �|"I' �l"I&`���m��`
�/ M��n�
�$��8P��HS��?i�8�#ck�q*� ���ٚζ��ܩm�f�D,��m�f[���e6�d�f�J�J+Y�.�%��i�O[������s�[�*G[w��[hk7ښ������(w�ޔ����h�Lr� �u��q�010^�� ��@�\����X ��
��[;��������˸Q*�'��$���^%�0�ZK~g��X��J~��u����9�?�Y�4�}f��X�&�}�z/Y�z'�7�^�7��,G��P�(�s�yӟO�G�~�M����sH4���t��	� ��@s����y��q�[Lz�ɟ��䮳C�Y�;v�9�:���X�pV�+��Um�MĮV��iVh4�}f�6��A��eVuk���n��L����6`��l��UM��`�we�z/��r�T�O��th��n�j#�H�.D�&D���w�{��U���Rn U��������j9�G��P�`��]��-Th7*4Z�rGQ����$�z��'U���zIS-�T7����M�6Z�P����A;�n��\�l����=�U���c��_��[�F� �����@�[�j��,��X��+P�л
�M�� ����"= T T�P�#���T�H�N$�^JճT-KձTKկ�VJՇ��\m��yR6�\m'W�R��䎓�b�;Lr�I�.�jR��ZK�ΒCc��p��=���FQ9�r�QT�Qn)ʡr�rh��C�n���	�Lh�\BC�*��P����#4T����N���r� O)��<��7"� �N��NIr;���\W$[/%*�L�]�n%7�H�)��)�S�I%y�CɽJT�IT���Z�Y�C��Cʦ���,�Ծ^����k4��̾.���ll6��3}��l���[�Ɔ���n�5}-E_CQ�I���O���6�8{����a���+P6(�	��e�<9ې��'a���C	{�����,)K¶���Y4�-z��ڸ�b�l�D�٢�X��آ�,�h�h3Kd���l<���l\��ðq6��ƽl\����qv�*�e�����%�������R�n	e�l`�\`�~�F;�8j�>7햋薉(џ�_�h�ny�D�Ѣ�h����-�P��P��h<�r
%��ƣ�-�h�%Z�E�N�EoZ�I�h�E�x"Z܎��+-�������?Z�m�9�-�ж�C#���B�_�ŭ��Uhq*��m�&�-�ж\B�R	m�$�-�ж<B����I��"h�.ږe��@�� �>�8p�`�u�D� �,����4:X�	E� ���A�E_�q`�W ��E;�q&pK n��hEr�/�d�Esi�QniH.�;Y���r(�BY�*�|��7rK72�EƯ��I��,Km%c�(_둯���m�5���L��|}B�.!_���GH!����~��d`�	��؍�Hv+��K�$�$ g���w��4;���bg7����%;;�����H��oBt6����@:��Eg��f�Ѿ���O�o'�w�	8����~g e/��89[L��ߦ� ��w�g��Xo#�;��&`��׻��Ի��F�Ro>�u�z��u��FD�^Ҽe���y��y����@�0�;���n���=��Y�7�|]zO a7 e ���	�IoF�{��N$�^J�Yz��;�ް�~�k�T�K�C�[N���.�7��%�dҩ��f�V���ll3�4�M�Bc���l4��E�N�Io��Ic�ђ������I�2��L�J6ɣS{�ֺ�9z���D����&]�v������@�^��] �-��+�5��¤�dݱ6$Y�I����v��Peɣ����sjY�Y=�Y�h���e]f��d�l��Y�"���LY���"=G�,G�GYw�Ho���(k6�Z����zN�z�T�'e�Fs]"d�Dz����D��s����+i*��B�_�9O"mH"�'���z��H��W�ZK"�%�l%1Hn:ˡ��rE,7���,*�,*3XT^���`QI��R�E�E%�J)�J(���l��"�dM�dMi��RɞR��(*�SΔs)*������p�) o�ذX\��-S6�thwZ4��󅓛�&�wu�%&�oj*yx�I�0m�|]�6��No����bD9��r�ce!�V&YO폖���e1����Ԣ�W\șo�KP(�/�` ]X 
�D)F0`N�S�ck�n�9-����Ŗ��w�sE_\����)C�����p$�60���I`�� $�gC��o���e
k���^��^?y�Ox�Mx�?xI{���%��Kz���/�^�<Ux��օ�օ�6���i�q�y�6�m�i�q�r����~��8m6N;�i�q�9\<����T�é��k}Ƶ6�Z�q��p��8m3���]��&�i���b\\���p�/\���%�����{��5�[��{m���#� �:�D�eү|(��2Ю|�G�)c/%Q��U[���\L�:E�*E�
E��D����!U풪rI�-�mC��Jj���d֢�N �I��$[+�3��~�M�g�����:Ֆ�:�S2+U{MUUS�9��E����Y���~���T[JW�Rm(�V��)4�����j ���Bp���6'�i�m10��o��Z`<���p;��ܾ����*p�
ܖ�O`�w�#��0� ��8p������'���Q/�ś^�΋�y�p^���V�m�y�0��oۇ������m���۞�m_y�-�m+o������F�m?y�'�m��oې�.�mrq>.�����x���v\����qq%��m\���'���}�m�q�e��n������c\�'���p�M���m�m�r;P:���>r�)�=d|K�m�x	g �	�6��V��qB���8��{Ѓ�=�{<�x���[΃}ƃ�������4�!m%�'d\���$s�R�CUЯ�VS�Y���g(�JfMf�	�u̚f=�Ye�Y���&��N`�`V`V`�`�`V ����D0��Yf�e�zY��M/+��5����e�e���qY���y\V<.�����*�eUrY߸�m\V6.k�˪�e5�e㲖Გ᲎���3Rf�!�nɬ6��Z�?GIB��YKH@6ʬd�R�KBjVB��T�T�F}5��f�Ӭs4+ͪE��ЬR�J��Ь)�J�H��X�@d)��J6%�*d�(�f��x�ƧZ�RM�W��*!�u!H�|���`�Op�?�~����_�IӁ�������d�v���uU%�*T5������@�#�-ll�l}��[W�����R���m�v�G��"@m��P� �3��&0n�S ���0�; ���0� �F ���j T5	l]j���vP;��/^ȋz�z�QO;�Su{�M/������[�驺�S��M�*�i�y��<m7/��V�z�k=�i��Vu���Ո����{�[�����ڇ����^��^��3��W���k+�5/�*/�^�TުS�+�� �K���.�d.)萖�c,u�J��̎�P&!y�(�� C��,�
r��2�����$�CrșH�D�Oɂz�ЫPު�Ц��R�ݩ�Cv�:T�(<��CJU`8�P�pR�xM���R�	��t��%)�$CH��"C-h��R�^2�8d�o�>O�@��w6J<O��M%R����_uզ�j�^��;����SI����IH?{��|A�qyg&��!�Ǚ}6�ւZ�W���H�j�i�L2�tȮt�)��![8�7d c�7S��SR�Q��F��:��#]*�w��N�N�<�Fꦯ�h|M�M�k*)�-���M�
��3e����5!��t�t�t}t��s��E�zN�\OyN'q��8��8�I�a���ʨ��k=��P��A���P���B�ă�ˋ�zR��N�>�.�$����zdԭ��'�֓H�5��l����E-Y����@�1@�/@�W k+�uȚ
d-�.Yg0�vk8��������ꅙ��f kC�u!�u!���cmƱ.�X��X�qaf�����Gse}�Ee�E�ҢNi�������fz��d�)2����D�V56e���Kƹ$GI6J���DR��*@[�y��x��^k0�z�l-E��"[?��Um@(�7v�[;[	�m I�6�
���������<���Qgd�Ă������?����}�g��vh#5R@��G�@��A��f*�U�R7qR�Rj�T���Y?{I?7��K}�M�qt�p��_:�/W�)���@�-݆�Y���8���JUΐ.��-�ʥ�I��a��:�47qive,FJ�%�x�,s��b.��Z�i,�e*��SR	ҍ�r�=�-� �\A�qQn1�lb"��C�3Y�%6�6�*kA�Wż�O%�M5���
���p���vY�R�9ܦL�T9����t��Ԋ�(��4��(�CHU��pC�6��Q1(��@��T� 蟵�_E㥺V��i�5�/%*�
P��$ ��!=%]GI@C��j]� t�+�fJn嘏
@��kڕ�̔��!錔u�u撀����2�E��L���d���秾�M�|��T�H)cs�m���(�D�驢�է�H�|��PG髞���.9h.�Q�(�&��ilWڹ�T��U��s�!����K�1���L�(ie()�F9穾��H��8yNS�h
u��Q��mn���M�]Ig��s���ҹN��S9V� �i�6uڎ�ZG�T���i:z�hZ�`��(*�/��53R�tK��R=��OG�:)������ M�{�!A��#�g&�D	*P�A���6`�J��5*����/ ˞�	Y[�ัWWs�������T�)�o�nV/
�@��.`�@k/����A�둕 '�`6��`���_�

� ��ާ�iM�<<E�z���p��*�&���p|�T��h��{��6�:~ ���[��?�Ҫ(�/�` ; �x�60�J��u6l�۩�T��Xy�9]�~�]�Y�����&4��bƆ�VkD��)ce��=w�㆛�4���~�l�]|����&6��m�����:m
�K��t�����o��i��k�B�qj�ʩ�ՏT	ջ��n���񯪓�0�j U�B���o�>�ꡢ�k��յ�V��^�SI=~�ZX+U��N���OM��R�T�b����j��X등�Ϩf�Q}0uU�~�E��=>�*�:>�'�kHU�f�T��_��z�"3UG��s	@�������X�c]��U�"�C�V�*r�*�>��5T���TP��r�z*r��
�^�ڦ��bjb]S=�N��*���S�
U���U1U�j�&0]m��PuS'U�JX3U����^%��*��X9UĺX띪�J�v����g�����C��rTk�P&k�P!�����u�n�΂���n�#(�3P3��	t]<M@'�d4q� �����aq� =��~�K'i���HZ8墖���J/]J�:�\t�j*���4w��3p��8�49Ϳ5MM3ъSq��ib��>���o�i8miZ�{S���ύ�ߌs߼�l�3�&���)s�Qf���'��<r��6��6�f��&�$��<�BFN��u츌�c�=\n��p	7�^���=�Vv�q�2��26�o��o��ۺ��#�j��/ְ��î�¢-�϶lK<�a���n-�,�]�j�q���� .u�?�iO{���1���ini�)MiKZ�gG�f':�e��w���[�w�9�e.3����V�Ͷ�=�� w���9������7�a kX�\g8�N;�m��>�l��6�e�]��%�G8�^C�~���v�bk���V[�d�K�$Uf�Pe��v*;�����TnaYX^Z�4��r�,�Fe�r�
���+����+�JG�W╁;��+�Oɧ�[�ҮD�y�;e�֕u%��)�{�tSZ��M��k�5e�US�)�\)W�Y+���n��T�>;��R�Y(��n��KʺMR)묎RGIgq�8�9k��Q����̖(K�C�DIV�ذ2Y�Xd�,wl�R���e��������Su���m��t���Dz��XKte[IT]�H4��� U[Eԏ^�>�G-l%D#� jGl��:�:ZG�*�2X8]�t��&w�B����z�\4�V4M���:pN�'��o�M��D�j��7���7�>4M�MCl��7�ޛ{l��7�.4M��f��o�M�	MBs>h�V���<�4�4����gf�g�M��ig��ͺ�u��f��f��V��43�h&�	�3�����/�깉ez-7���ʜ2�v����Ⱥv\�ݺq�k�e\�q|����@���vn�ֲXV�r+�b_Y+�u��m�[cǆ[�ݯ�vm����������_�m�&G[��l�v�fk�W�m�f=�c{`�[z؆�D���z��?���k,��/���w��'\�Y������9����=�y���w�5���pÝ5�j�ݦ���/vq�v�m_�Ũa�D%""$%%I�������a�8�A�Y@��%E�������(_�4j	��wE?ŏ,ȍ�(��(b�k����?��Q�|��0�<�TѴ�4��§��ڥ�7.���8��/D��@��՚�ڊ}~U�B#��
/ǥ;U�zн��	N��-`��+=��D���7�0U����}�`r���c��<ߚ�GR}�?�6S��{�yhO� &Q� v�4����`,��k�(�
�qw���UlM�Ps}^��P�V�~C��m6nV��n����tԏD;�`�uC�K�{����sb���n��hK�#����G�6xu��a���X-�1�H��@���� ���{E]���mc��	g��ai~1��&(�/�` �6 �p49`,%�0�/���PqM���џ �o�uA7e�$�;����|��=�=����o�ܤ�E5/pN���T�M�I�m�M�^�k��4�&m�I4���3N&�d>&�d�ar����[{I/��Kv��\�Kz�%�$��Ԓ��d���J^I�V�J�]%�d�JR��SrJ�KI)i;JF�8���h#I$�H�ȴwd�$G�H�k��X�H�{D~H�)��D�A6H�rAfm ���@fM 	��r@f- ��j����2-��-w��Y�m�f��,�2�X�e��ܿ�en���ܾ�e����Y���{�ˮ33�̮[�V1_WEpUQU�S�TUD�S�T7M�^*��]T;�*��;�ߜ"��{S�g����K�R�])V�}Q\q���mB3(��^��+���N��#(��>�����.��(�������V�Z�iM�m��5~ֳ�� ��լ��Z�8Y���j���^���]�j�����U�^�խ�Y�j�����m��fqǂ��*[�mV�*o��TG�����<�qSi*}�JR�����2T�����O�)����2|SnJ kJM��RZJ۔�Rޞ��2.)%e���lH	)�v��2�Q2�݋rQ��(�؈Q�}(e��4�a�A�[P
J߁2P�J@�����W�I?���>�{O���zROn�'�do<�'���w�k;i'��d��-'���q2N���O{۩�vM�tz��Ω�r*��q�Nᴻ���^�5խ�j�;MӴ�)���陂���^]�e:6��i�b*�y��)8���m/���]ڥq.�Ҿ�[�J�T��>��N�f7i�v&eҰ�tI�VR%�}�Gn�F��H�4�H�t��i��
�� ��7z��k�F���<FcFa4�_�ZsuQ�mќEY|EW4WQO��QE�O�Ds5Q�-Q�!��ADq���P�ݡj�C9��n�m�P����1Cq_�ڶP�]�j�B)��N�m	����q�����qu��ڠ1����@i�2:\�௽��7�[k�5ֽy��ŭ[���?���6Ct��cHa���c�5��o��q��n0����:�Zk�1��u[w�wǯ�N�����a��~/۹�Y��o��6��].��b��cc�����7�'��֟��_�0_ؾ}�e`)6�6[+���8��|����t?�q��"��]����=O��z��^8��,��;�������Q�����*�O�T�5US��TLE�Q�lEUT��Pyj�b-��
���5�����b�i���)�xO�4\O��y�����!ʠ$)((ecϰ�����#1J�!3422��(l��e��q�^�Y��ީ��c3J�N ���F�=��dL��v���L��� 4n�ą���D�4Q��h��?��mj<��5�S����x���;M��x�hT17�ʝ,;��0j���0�Ks\x4įtF�!u?��7�_�L�8:�74ǰ��QuD������Q��.��GY�Cǈ�t�>�'�P�/ο�T���J׸&8����bV�5n�Uy�L��u��f=�U�,��� �4�A�|���\+�z������D�����螹��[���܌���n׭"�0��d�u��־3A��V'�>w+�o����!�k���zLԔP>���@����m䄂!@y�YZ���8FH�%�ݮ�J�۝�8`Ԃ̙mC�W��I��w��	U�(�/�` �E j�,7H�2T�c��h�M���0�1������ExE���#��!���gS_m˔d
����_�#���ȋ�ȇ\ȃ���������y�?p��w\�s�o���^�4>�2��x ^a�(��6�N3	�p����faa2���������:����ҡ/�> /܅�0�!.������Y(����W��`*��c!,܄��z�8���0��QH
K�)<��0��U�
[�+la�cX�gXNBJX	-�%�CL�	5a
~�t�Cwl�4,hN����F�0"m�ݟ������ݐ�n��љ��-gP�(���%�K��hڈݙ���HE�'V��mA�x[5��k��
*,���[�l�^Ok�z=4�����p��C�^�����UJۓ�.)����'U��"W'mQ�d�*P�H2��%MLp�ֶ%SH��'Q�0��&&8a��R����i[OF��G�,��5,�DM�D�J�h�]�jV-�XŚ}]lK�uu-��	9��[׈9�kHxy��#D�t���O;�w7{��>����>���ν�˹�˶L�r��Wn�UVeT6eReP�s'or&�ْ)Y�!ّY�ِ	Y�߼�j��7��،˘��X�mpc0�b��]��3x��8�e0_q~�.x��o0r���@p� y�ā6��@�����ڪ�������z��Z��:������q��N��M%�A�@}+�����)��)��i�n����&����(�ި���FitFe4Fy��e�T��hmQz@h UQ ��(�Fֱ�[����\�_�C�0��K_�C�}ߗ�?^�+ue��K\y+me����R.ee���u�*]e�d��RU�JTy*Me�$��RT�JP�)��SvJN�)5e�Ĕpy)-e�į��r-�r��Wn�1��p��[�
W�����{��.�Q�O��(������$|�3y]�]�/���p��=xOr��58�G�/q�x���ؿ��:��_�e^��9�r-ϲ,ò+�r*�r)�r(�'s�&c�%W�$G�#7�"'�!� 2 ���1�q��<v3߱�1��<�r�:�s0~c7nc6�b��`�`܁9��!��ᇉG#b����C��W�꫽�CyuWu5W犫�j��J��*WY��Zj�R�Jj�B�:j�2�*j�"�j��i��i�/��]ʥ3�~P�A���nP���^�#���H��H�TH�H����%��	5�JX�+Ѻ2W�5*AeQ�(|bW��u8+��T��[xI姜��rS�B�g&N�r%���d��!I��˹�z����{:�3��+z�#��z���z�������������y�����9������G�37�2'�1s�`��4�˻���O�܀�8_���x���D�"�5z4��G���G��_CXG��#�펚@�� ��3KX=d�t�Gr��9��7����4�TrJ���k8Rzb�(夝	nX�����:d��YEMtW�f�`fH�q�$c;��WP��W�U�b�&�r�2���Z�Z��O�z�Xޓ���X�F�}���-㌦M��х�K�$��,kX]C��Y�[�5y�n㩻�W��S��]k��լam������|H�!_�����S��%���g2K��>rG�%�����|̹����8������_\�;L�k^HǠd�AP�X)UP�tN���2°c@2���aŊ����"8/qX��d��[� I�L<��He%EX R,�c�E{�tJ��G]�ad���%�䕴�ii�c���n��q��M��L�t�_��W:�O��G:�?��7��������y8���9�s�9���w�?�|�� @�訡XKfDDDD$I ���@�;d�fF�hA�(�w����U��
k��e���$�u��C��Ci�/�������� ��b9j����fZ7�,?��/�n����l��9$LH���_��rp��E!��@�4V�r��a�c���:.Lջ�C�2rվ�}���1��K.�,����%��F�A ��q�ft��QD.~۰��Ƃ�?=���_	K��@ې:%�R��+��ZK쩳'������H��v{��~����#�	��C~����ax��2��]���w�������}�<�����A����<�Ku@�[	��o������A����p�1�!:qN�uq�j������E�]��{,��(�/�`�u �p�H�TR�     ȱk���^�{*Q�V���GdY;#oG��XDѢ�������L\��L#���D�ַ�	����M�N� �  ��a�����a��u�4S=�έ�o�{�]tдyf��
�9v�s���/���)�\J��Zme]M>���z��RP3��t�0�(�����m���#��M�8�� Ά�]�1�w��]��Na��˨.:#�fx�\B��լb��V-*Q�:Ԡ����9�8��{S�v��)�%�MD��	��=���%_�=[�f7ҽ�D����i�޻�mH��)�D��?����%�l$c���䒈1��;lyl��ur�|b�k��Lb;b�������[^ٶʵSf�R}�jTeSu��]q�zX_y���F%1G�`E���0�&W�s�pz͒��U���-Ӟw`�}�����]}��T�U�6u�N�*Ti�d�w�b��P���J��M��B@I����~��1=D0==^|6��p������0Xc��¤���S�����0Oe�f��Lc
ӗ�T��!yH��|�.��:��P�w�o-?Y.�F钰%��K��_����q��۷�Lw˵m�d��P�J"II
�����HK$�(�-"F��J����Y��k �)@����7�*�����[�����N�/@9DWB�(�5T�W��:���#]�����ާ������tl��|l�
Kr}��-�`Fǩ����V��D6A��U@��9�'̳:��B�5Ѱ��Fm�e���Q���s�RSCC             [remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://ccopc0inwpyd2"
path="res://.godot/imported/Roboto-Regular.ttf-cc0d0121c13336ac418b94785d726aff.fontdata"
      RSRC                 	   FontFile            ��������                                            %      resource_local_to_scene    resource_name 
   fallbacks    data    generate_mipmaps    antialiasing 
   font_name    style_name    font_style    font_weight    font_stretch    subpixel_positioning #   multichannel_signed_distance_field    msdf_pixel_range 
   msdf_size    allow_system_fallback    force_autohinter    hinting    oversampling    fixed_size    fixed_size_scale_mode    opentype_feature_overrides    cache/0/variation_coordinates    cache/0/face_index    cache/0/embolden    cache/0/transform    cache/0/spacing_top    cache/0/spacing_bottom    cache/0/spacing_space    cache/0/spacing_glyph    cache/0/16/0/ascent    cache/0/16/0/descent     cache/0/16/0/underline_position !   cache/0/16/0/underline_thickness    cache/0/16/0/scale $   cache/0/16/0/kerning_overrides/16/0    script    	   FontFile "   res://utils/Fonts/Roboto-Bold.ttf ��ni`[      local://FontFile_37lpf       	   FontFile                                                      !          "        �?#   
           $      RSRC  RSRC                 	   FontFile            ��������                                            %      resource_local_to_scene    resource_name 
   fallbacks    data    generate_mipmaps    antialiasing 
   font_name    style_name    font_style    font_weight    font_stretch    subpixel_positioning #   multichannel_signed_distance_field    msdf_pixel_range 
   msdf_size    allow_system_fallback    force_autohinter    hinting    oversampling    fixed_size    fixed_size_scale_mode    opentype_feature_overrides    cache/0/variation_coordinates    cache/0/face_index    cache/0/embolden    cache/0/transform    cache/0/spacing_top    cache/0/spacing_bottom    cache/0/spacing_space    cache/0/spacing_glyph    cache/0/16/0/ascent    cache/0/16/0/descent     cache/0/16/0/underline_position !   cache/0/16/0/underline_thickness    cache/0/16/0/scale $   cache/0/16/0/kerning_overrides/16/0    script    	   FontFile %   res://utils/Fonts/Roboto-Regular.ttf Y�Q1�D      local://FontFile_ipefk       	   FontFile                                                      !          "        �?#   
           $      RSRC               RSRC                    Theme            ��������                                                  resource_local_to_scene    resource_name    default_base_scale    default_font    default_font_size    script    	   FontFile &   res://utils/Fonts/roboto_regular.tres ��������      local://Theme_4ig3y D         Theme                       RSRC  GST2   �   �      ����               � �        |  RIFFt  WEBPVP8Lh  /��I�#IR��� YY�{�!��m1u>��H��8 ���Aqp���q 
��� ���'��LR!�%u�/r�L>?G�@�-~tB�!.d�>:'��w2>O�ҷYt�<?L�H_e��t��̟㩞<`�����Z�OP��h:���C�
�$� K�G��
B����d���@���S'�j���I=8�y��B~ �4�PI�yh⢳���Nz����$�s"�+|4�{���L��"����I�ɪo��kt��p�a�Z��l���p8H��#���d�����Fs��������>���]��C��;�0]e� ���*6_dI
��� \C�}���3H�&�3��q�8�6�',3�W�+fv������k�E�0B�`dH ��V���3 �Di���N ��H��6t z�6��-Lh�3S_I�J 3JmI-� ��$;иW ����:((%�q&z�0���v>��%��A;���%t0(L I���
��$ɲ �sB�zb���@Ge��:jh< I�;t����R�J >���L���`��ƣ�~&&������d�E#Q{ l�42�=� ��ܸ��I=D%��� �p�W��yB�r
�&y��[�Jg,3èl ����$��p��D��P�T���+߇T��Y�WAk��3�xJ�������9$H~�_ I
�)�
� ��$.�$HR8X�ρ���$Sc8  dE���+�P�6�P�0��b��O��9< V S<\�-4ІPpB�>�@�ȯ�� p���w���A�G\��]hGjJ�f v@B.z���{���E�kgT
�JH7 �LX���Pk Ll����!!���{h��[F
 ���1!\+��< ��2zB)��ИB�֐d�kCcL��k4�0v�$K�y�+ 5y�� uH�O��4�ĝB �za���*���xt��Oe���W�}�[�a	U �;��[x�ӆ�ԋ(���/�^�[�>�����w�[�P�q����[]�{��M�
_���$nrh�����P��Ms�3o �*-�/�
�`����:B�T�$q�E�	Bn�:�#J� �����)d&���0��4�JW��+%�2ho#�&6��Ro�B]�J�;)�$|��ˆ$d.,G�:_R�I���W��$���1� )���,I�������O �%�ݙq.�;�dG�ȗ��� $�[��B��N�$�`%z%�&$�󩾒'>A5v�T��&�	�`7%M��əvȂ[p�R��h�d	NY
I&>�E2gl��˧K'��כUXv���@�)~�cA��[}G��	���wW���K�z���B            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://defhmeibov4kh"
path="res://.godot/imported/icon.png-487276ed1e3a0c39cad0279d744ee560.ctex"
metadata={
"vram_texture": false
}
                extends Control



var rng = RandomNumberGenerator.new()
var bar_graph = preload('utils/BarGraph/BarGraph.tscn')
@onready var bars = get_node("VBoxContainer/Output/Output/Bars")
@onready var dice = get_node("VBoxContainer/HBoxContainer/Dice")
@onready var explode_depth = get_node('VBoxContainer/HBoxContainer/VBoxContainer/ExplodeDepth')
@onready var mean = get_node("VBoxContainer/Output/Output/Mean")
@onready var sample_output = get_node("VBoxContainer/Output/Output/Sample_Out")

func _ready():
	rng.randomize()
	pass # Replace with function body.



#func _process(delta):
#	pass



func _on_Calculate_pressed():
	var depth = explode_depth.value
	var output = dice_syntax.dice_probs(dice.text,depth)
	var expected = dice_syntax.expected_value(output)
	var old_bars = bars.get_node('BarContainer').get_children()
	
	var sample_out = 'Sample Output: '
	for i in range(10):
		if i !=9:
			sample_out += str(dice_syntax.roll(dice.text,rng).result) + ', '
		else:
			sample_out += str(dice_syntax.roll(dice.text,rng).result)
	print(sample_out)
	
	mean.text = 'Mean: '+str(expected)
	sample_output.text = sample_out
	
	for x in old_bars:
		x.queue_free()
	
	var keys = output.keys()
	keys.sort()
	
	var header = bar_graph.instantiate()
	header.set_value(0)
	header.set_label('#')
	header.set_label2('%')
	header.set_bar_color('e0e0e0')
	header.set_label_color('e0e0e0')
	header.set_label2_color('e0e0e0')
	bars.get_node('BarContainer').add_child(header)
	
	for i in keys:
		var bar = bar_graph.instantiate()
		bar.set_value(output[i])
		bar.set_label(i)
		bar.set_label2(round(output[i]*10000)/100)
		bar.set_bar_color('e0e0e0')
		bar.set_label_color('e0e0e0')
		bar.set_label2_color('e0e0e0')
		bars.get_node('BarContainer').add_child(bar)


func _on_Dice_text_entered(new_text):
	_on_Calculate_pressed()
  RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    default_base_scale    default_font    default_font_size    script 	   _bundled       Script    res://many_dice.gd ��������   Theme    res://utils/theme.tres ��������	   FontFile &   res://utils/Fonts/roboto_regular.tres ��������	   FontFile #   res://utils/Fonts/roboto_bold.tres ��������      local://Theme_unoio          local://PackedScene_pxl3e 2         Theme                      PackedScene          	         names "   /   	   ManyDice    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    theme    script    Control    VBoxContainer    HBoxContainer    size_flags_horizontal    size_flags_vertical 
   Calculate    text    Button    Dice    size_flags_stretch_ratio    placeholder_text 	   LineEdit    Label    ExplodeDepth 
   min_value 
   max_value    value    SpinBox    Output    TabContainer    visible    Mean    Sample_Out    HSeparator    Bars    ScrollContainer    BarContainer    Syntax    focus_mode !   theme_override_fonts/normal_font    theme_override_fonts/bold_font    bbcode_enabled    selection_enabled    RichTextLabel    _on_Calculate_pressed    pressed    _on_Dice_text_entered    text_submitted    	   variants                        �?                                             
   Calculate      0A   
   eg. 4d6d1    ff�>      Explode Depth       A     @@     �@                                  �  4d6: roll 4 six sided dice
4d6s: roll 4d6 sort the results
4d6s>5: roll 4d6s return the number of 5s and 6s ("s" means success in this context)
4d6s>5f1: roll 4d6s count all 5s and 6s, substract the number of 1s
4d6+2d5/2: perform arbitrary mathematical operations. The statements are turned into Expressions so everything supported by them will work fine. Note that the result will be the data type returned by execution of the expression. Often a float.
4d6d1: roll 4d6, drop the lowest one
4d6dh1: roll 4d6, drop the highest one
4d6k1: roll 4d6, keep the highest one
4d6kl1: roll 4d6, keep the lowest one
4d6d=1: roll 4d6s drop all 1s
4d6k>5: roll 4d6s keep only 5s and 6s
4d6d<2: roll 4d6s drop all 1s and 2s
4d6r1: roll 4d6 reroll all 1s (1 is not a possible result)
4d6ro1: roll 4d6 reroll 1s once
4d6r<2: roll 4d6 reroll all 1s and 2s (not possible results)
4d6ro<2: roll 4d6 reroll1s and 2s once
4d6!: roll 4d6 explode 6s (for every six, roll again until a non six is rolled, add them to the rolls. The output will have variable number of dice)
4d6!!: roll 4d6 compound 6s (for every six, roll again until a non six is rolled, combined them into a single roll in the output. The output will have 4 dice)
4d6!>5: roll 4d6 explode 5s and 6s       node_count             nodes     �   ��������	       ����                                                                
   
   ����                                            ����                                        ����                                              ����                          	      
              
   
   ����                          ����                                                    ����                                                          ����                                        
      ����                   	             ����             	             ����             	               ����             	       "   !   ����                                  
   #   ����                                  *   $   ����               %      &      '      (            )                conn_count             conns               ,   +                     .   -                    node_paths              editable_instances              version             RSRC          [remap]

path="res://.godot/exported/133200997/export-680c3b90db1a112fd95fa67cfc035350-BarGraph.scn"
           [remap]

path="res://.godot/exported/133200997/export-18e962876256ba8fdc48ccdb9c9cff2a-roboto_bold.res"
        [remap]

path="res://.godot/exported/133200997/export-be239d24c8baf9dcdc3c84351753d4e7-roboto_regular.res"
     [remap]

path="res://.godot/exported/133200997/export-f4c31637c32af98e1ae2665a7bbcf632-theme.res"
              [remap]

path="res://.godot/exported/133200997/export-7c5b28a8b4e4a80306957b0dbed5365f-many_dice.scn"
          list=Array[Dictionary]([{
"base": &"GDScript",
"class": &"dice_syntax",
"icon": "",
"language": &"GDScript",
"path": "res://addons/dice_syntax/dice_syntax.gd"
}, {
"base": &"Resource",
"class": &"dice_syntax_parsed_dice",
"icon": "",
"language": &"GDScript",
"path": "res://addons/dice_syntax/parsed_dice.gd"
}, {
"base": &"Resource",
"class": &"dice_syntax_rolling_rules",
"icon": "",
"language": &"GDScript",
"path": "res://addons/dice_syntax/rolling_rules.gd"
}])
             �PNG

   IHDR   �   �   �>a�   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d  �IDATx^�]M�=���؏�=	k�{�cO�'1{	{�=���=�^���&�K���������U]ݯ?�IN�_խ��[����իW���E������� �S.��\O�8�
pq<��x*��q5�������zI\E�7���~|���0�%���k`���8�x}b�yGWU�g� ���� ��[��Y�_L�)�% ����g� ٌj� �OL����<8���.��z p�j��U 2�%�G ������8�h-����qxkp4�K2l4�.��G� �2~�`�����S�/�x��|�n�Hе, �#�~��7�jP�f2���������CX�=* ��9�2����8���D��o���v��S���D��ţ�W�Gf���\MJ�e�fS��|h�&��'"����!3�#�����
Ԕ&�Y�0������ .!]�18J'J)���4��_�� �yk�k�۷�9�-�=����Q�3	�C�#�!��~�%������/ݯ���7�G( >����4S��P"N�5��0��Uů�Wćw�z.�Pl��M�_�!�-rI~'����5��]�չU���F��V���w�s�61����tiܦ�k+@ԛ-@a ��5������jX���~C��2�(@|�v�.ְ {,Q�#X ƪ�`������@��J\�,�ȌGW*��C�G�6�*@U����;F?}���_G`�5x�H����x �
pq�
�:��R�c�>�L���֢���b�ȟ&��v����iv�8jK�����^�Q���aO0r��Vp��VC��Cop$+����ݾ�xU�\�b�6�ŋO�� �LF�!G��f��4��
�p�K��sX��GB�b��1tQ\�G���+���v�(�n��M�K��;�.���+eX�s�(����5L%/��ZB��_i�Aj��{�����b,UJZJk=�{�]�5�q.m|+|K����e_��ޏtV$��n���c$n/İLm,@�?3nn�c�����f���D'W��w2�5�Z|5?�/N�0��Z@kUS[L�㩕���])j}��8"�W&ꩣ�o����;���
 �����B�)b-ak�)zF��3[���5ĄQ`�7.��Pa���{�>�d�����T3��U'����$�d90�Huo�u,��"ឡkG0]�9"�G����Jq:9�&�~����eXN���i KN2�U�Y�8GL�����^��QY����XK`���I�4z� K��P�n�e���=����~�ʲ�fd�u�ňF`@7<��K�[�P1��V�D�N1u�2=
�t��c��E�P!�GؼY�w��r�K�J��Z�f���-��r��,�a�ʹ�<8���fo P3s�z��WB��{��A�U۬Q��MD��PK ��(�Ocd ���ս���V���,a�T�3ݙcd�i���P!��o�d�,�
7���]�8~g"�Ɇ[B}��3��>>�eJ��*H�[hK���;��3��څQj8��9����:� Z�!��'�!?�Ȥ�� �֏H7|�=L�����~E�Y�����<H���]>}���c��z�@0�߽��}�,\�q���X�7�M�7�YH�f��o$�9�gŔ)�Y�_#���Q�d�!2_ �,�`ͯ��1C~7G��#�>��3ԟ	ˤ�Lt���T&�m�(ݜI�i�y	�c�x8�3Y��/��3a%G��ˆUK�*��#��"��ܬe+�c�xh��x���֦5[�-� ���2�T���D���9�%��ͿU��ֱD��L��R�ųJ���z� ����e�yhw	�������:��/��;��m)5N�W��d�)�uF��,S/]�q���9r(�u�Jg�f�f�+��	�nZ��_s]L7ޱ��9���V3
d�{�����K��'>6F.�؝�0Y��]�i\��9����%�K�=_�!����v��8J�L�)ɩLI.C���ߋz=U y�<0�;n{G��f|�~��Fof��"�)'�0ܪ�&X�(-O܇y�Ɏp� �Z��[�Ȇ��Y�E�&[���� ��5z4,����A��SW*aK�[gK��C&|f-C�?��3z�L0b��>7��¸#{��`Q4��[e`_L$T��]�*��WS @�����,N���6��4�&(�Dٍe��W���φ9L,6����?�9G�����U����\jtiR͌f�M��bh����)b�5�3W���fz�K|��2ٝ�['L2K�J�p5�잎��a��^�]-�� ����]�P�.\��e��nm3h�%{n1Jk�v����,��Z�*�T �jp�ػBh�8�l.ѡĽ&]3HO�F(�/'�J�&��Bf��k�lK��f.Yn��	\дk�Z�
����PߝZ����係����~<�dEq'q�J���1���B�j�b[�F��}R]:,ţ��B?�;c}��s˞��05�4G��@�Lh�FљJ?�U��Vu��il� �\<�Y3?�ɤ�`�n��>��17����� jZz��X+v[`Q�,��c;)0�f��* V���������D�7��<q2l=��ΰ���}��FoM|�v{J�o�6�U������* 6S��9r&A����'�����,@o�]A	�7�4�����E��G�|�2{�v� �[�z/e>N=ua0e������L��|��_Ǟ}w��RK�g���$2��?
�ApYJ �K�
�j�n�p6].3�|�-��UM�R<-���.�x�ރ�1ނm_�b�^�~0>�T
P��R6�k�9������{`p;�K�5���|j(�׾e8� kS�KG������U�pA'fdZ�6���Ʒ�<�p�2hصi� ҄�q��pA'[c&,�8�,�t�Z@�E������M��H da��
V3�KSǵ?_�A����\Z麩�YGx+�oz�Q|oi��&���2�l.�l���9��qv_i����l��
%��=��qK�S7�\4�w�0�?�L,dEf�P��{8�0��S-b7T��Q��
,Q�9.�c�����rbm|�/��=S�l����-�nP ���'���N�R���r�@���g��߇�>��?{R ��Db��)˗�2��ºp1���̞S�]`o�0Z�d�R77xT�@dB����ҍV{)�{&J}d>ǅ߻�|`o@C�P�5��p�V#�8���v�k��{W  ��+J��y�,J�F�[��%�� �����x�d��y��08Қ@��7&�ܢ*��U�Q�`mj���\�8�`D�g�r/JS�s�?�dHx��K=b� %���P��g>pT�@���p�7-pq��uX�0J�UF(�=pq�nw�`�к��t�\� (���|�U@���\�WQ �����|�J
 ���l�WS �3�ҙ\Q d������*��',^��?`�x�
ג�    IEND�B`�      	   ��ni`[!   res://utils/Fonts/Roboto-Bold.ttfY�Q1�D$   res://utils/Fonts/Roboto-Regular.ttfwa�`�fg   res://icon.png�vc�C��I   res://utils/BarGraph/white.png�7/��N\   res://docs/index.icon.png��j|���{%   res://docs/index.apple-touch-icon.png�r�F7�1   res://docs/index.png��R5B�@   res://many_dice.tscn��3�ȩ�u"   res://utils/BarGraph/BarGraph.tscn       ECFG      application/config/name      	   many_dice      application/run/main_scene         res://many_dice.tscn   application/config/features   "         4.2    application/config/icon         res://icon.png     editor_plugins/enabled0   "      $   res://addons/dice_syntax/plugin.cfg )   physics/common/enable_pause_aware_picking               