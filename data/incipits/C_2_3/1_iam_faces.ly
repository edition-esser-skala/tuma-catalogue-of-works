\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 6/8 \tempoMarkup "[no tempo]"
    R2.
    r16 b'' d, b' c, a' b, b d, b' c, a'
    b,4 r8 r4 r8
    r4 r8 r16 f'' a, f' g, e'
    f f, a, f' g, e' f4 r8
    r16 f'\p d f c f b,8 b' r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 6/8 \tempoMarkup "[no tempo]"
    R2.
    r16 b'' d, b' c, a' b, b d, b' c, a'
    b,4 r8 r4 r8
    r4 r8 r16 f'' a, f' g, e'
    f f, a, f' g, e' f4 r8
    r16 f'\p d f c f b,8 b' r
  }
}

Basso = {
  \relative c {
    \clef bass
    \key b \major \time 6/8 \tempoMarkup "[no tempo]" \autoBeamOff
    b'8^\solo a16[ g] f[ es] d8.[ es16] d[ es]
    f8 b, r r4 r8
    r b' d c16[ b a g] f8
    b16[ a] g[ f] e[ g] a8 f, r
    r4 c''8~ c16 b a[ g] f[ c']
    d8 b, r d'16[ c] b[ a] g[ f]
  }
}

BassoLyrics = \lyricmode {
  Iam fa -- ces li -- ctor
  fe -- rat
  et mi -- nan -- tem,
  iam fe -- rox en -- sem
  ra -- bi -- dum -- que
  tor -- tis vin -- cu -- lis
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 6/8 \tempoMarkup "[no tempo]"
    b8-\solo f' a, b d c
    b4 f'8 d8. es16 f8
    b,4 r8 a4 d8
    g, b c f,4 c'8
    a8. b16 c8 f,4 a8
    b4 a8 g4 b8
  }
}

BassFigures = \figuremode {
  r2.
  r
  r4. <6>
  r4 <_!>4. q8
  r2.r
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
