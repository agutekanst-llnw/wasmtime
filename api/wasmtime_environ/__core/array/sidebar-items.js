window.SIDEBAR_ITEMS = {"fn":[["from_fn","Creates an array of type [T; N], where each element `T` is the returned value from `cb` using that element’s index."],["from_mut","Converts a mutable reference to `T` into a mutable reference to an array of length 1 (without copying)."],["from_ref","Converts a reference to `T` into a reference to an array of length 1 (without copying)."],["try_from_fn","Creates an array `[T; N]` where each fallible array element `T` is returned by the `cb` call. Unlike [`from_fn`], where the element creation can’t fail, this version will return an error if any element creation was unsuccessful."]],"struct":[["IntoIter","A by-value [array] iterator."],["TryFromSliceError","The error type returned when a conversion from a slice to an array fails."]]};