\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    R1
    a'4. a8 cis a h[ \hA cis]
    d4 r8 cis d[ \hA cis16 d] e8[ d]
    cis[ h16 \hA cis] d8[ c] b[ a16 b] c8[ b]
    a4. d8 cis4 c
    c4. h16[ a] gis4 r8 e'
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  _ _ _ _
  _ _ son, e --
  lei -- _ son, "e -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    r4 f f2
    e a
    r4 a b, g'
    a, f' g, e'8[ d]
    cis[ d16 e] f4 e r
    r2 e4. e8
  }
}

AltoLyrics = \lyricmode {
  E -- lei --
  _ son,
  e -- lei -- _
  son, e -- lei -- _
  _ _ son,
  Ky -- "ri -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    r4 d d2
    cis4. e8 e2
    a,4 r r2
    R1
    r2 r4 e'~
    e4. d16[ c!] h4. h8
  }
}

TenoreLyrics = \lyricmode {
  E -- lei --
  son, e -- lei --
  son,

  Ky --
  ri -- e "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    d4. d8 f d f[ g]
    a4 r8 a a4 g
    f r r2
    R1
    r2 a,4. a8
    c! a c[ d] e4 r8 e
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  son,

  Ky -- ri --
  e e -- lei -- son, "e -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Allegretto"
    d4. d8 f d f g
    a4. a,8 a'4 g
    f \clef soprano a' b, g'
    a, f' g, e'8 d
    cis d16 e f4 \clef bass a,,4. a8
    c! a c d e4. e8
  }
}

BassFigures = \figuremode {
  r2 <6>4. \once \bassFigureExtendersOn q8
  <_+>2. <\t>4
  <6> <_+> <10> <6>8 <5>
  <10+>4 <6>8 <5> <10->4 <6>8 <6->
  <6> <\t> <7> <6> <_+>4 <_!>
  <6>2 <_+>2
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
