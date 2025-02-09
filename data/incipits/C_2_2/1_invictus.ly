\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r2 r8 c'' a c
    c( b) g, b' b( a) r4
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "[no tempo]"
    R1
    r2 r8 a'' f a
    a( g) e, g' g( f) r4
    R1*2
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 c^\solo f4 e8 g a a
    g f16[ e] f8 e16[ d] c4 r
    R1
    r8 a'16[ g] f[ e] d[ c] h[ a] \hA h8 d4
    e8.[ f16] g8 f16[ e] d8 g e c
  }
}

AltoLyrics = \lyricmode {
  In -- vi -- ctus, in -- vi -- ctus
  he -- ros nu -- mi -- nis

  mer -- gen -- dus un -- da, un --
  da flu -- mi -- nis, mer -- gen -- dus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r4 r8 f,^\solo c'4. c8
    c e d c16[ b] a4 r
    r2 r8 c16[ b] a[ g] f[ e]
    f[ e] f8 d'4 d16[ c] h[ a] g4~
    g8 c c8. c16 h8 r r e
  }
}

TenoreLyrics = \lyricmode {
  In -- vi -- ctus
  he -- ros nu -- mi -- nis
  mer -- gen -- dus
  un -- da, mer -- gen -- dus un --
  da flu -- mi -- nis, "mer -"
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r8 c^\solo f f
    e d16[ c] d8 e f4 r
    R1
    r2 r8 g16[ f] e[ d] c[ h]
    c8. d16 e8 d16[ c] g'4 r8 c
  }
}

BassoLyrics = \lyricmode {
  In -- vi -- ctus
  he -- ros nu -- mi -- nis

  mer -- gen -- dus
  un -- da flu -- mi -- nis, "mer -"
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "[no tempo]"
    f4-\solo r8 f c' c, f4
    e8 d16 c d8 e f4 r8 f
    g4 r8 c, f4. e8
    d4. d8 g,4. h8
    c8. d16 e8 d16 c g'4 r8 c
  }
}

BassFigures = \figuremode {
  r1
  r
  <9 4>8 <8 3>4. <9 4>8 <8 3>4 <6\\>8
  r2 <_!>
  r <_!>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
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
