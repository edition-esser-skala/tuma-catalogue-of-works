\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "[no tempo]"
    \partial 8 r8 R1
    r8 d'' e, cis' d,4 r
    R1
    r8 a' h, gis' a, fis'16. dis32 e8 e,16. d'32
    cis8 fis,16. h32 \appoggiatura a16 gis8. cis16 \appoggiatura h a8. d16 \appoggiatura cis h8. e16
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "[no tempo]"
    \partial 8 r8 R1
    r8 d'' e, cis' d,4 r
    R1
    r8 a' h, gis' a, fis'16. dis32 e8 e,16. d'32
    cis8 fis,16. h32 \appoggiatura a16 gis8. cis16 \appoggiatura h a8. d16 \appoggiatura cis h8. e16
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    \partial 8 r8 r2 r8 fis^\solo g fis16[ e]
    fis8 d'^\tutti e d16[ cis] d8 d4^\solo d8
    d4. d8 cis cis h8. h16
    a8 a^\tutti h a16[ gis] a8 r r4
    R1
  }
}

SopranoLyrics = \lyricmode {
  con -- fu -- gi --
  mus, con -- fu -- gi -- mus, San -- cta,
  San -- cta De -- i Ge -- ni --
  trix, con -- fu -- gi -- mus,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    \partial 8 a'8^\solo fis e16 d e8 d16[ cis] d8 d e d16[ cis]
    d8 a'^\tutti g fis16[ e] fis4 r
    r8 h4^\solo h8 h a a gis
    a a^\tutti fis e e r r4
    R1
  }
}

AltoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di -- um con -- fu -- gi --
  mus, con -- fu -- gi -- mus,
  San -- cta De -- i Ge -- ni --
  trix, con -- fu -- gi -- mus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    \partial 8 r8 R1
    r8 fis,^\tutti h a a4 r
    R1
    r8 e' d cis16[ h] cis4 r
    R1
  }
}

TenoreLyrics = \lyricmode {
  con -- fu -- gi -- mus,

  con -- fu -- gi -- mus,
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    \partial 8 r8 R1
    r8 fis^\tutti g a d,4 r
    R1
    r8 cis d e a,4 r
    R1
  }
}

BassoLyrics = \lyricmode {
  con -- fu -- gi -- mus,

  con -- fu -- gi -- mus,
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "[no tempo]"
    \partial 8 r8 d-\solo fis g a d,4 r8 a
    d fis-\tutti g a d, d'16-\solo cis h8 a
    gis4 r8 \hA gis a fis d e
    a, cis-\tutti d e a,4 r8 gis'-\solo
    a d, e e, fis' fis, gis' gis,
  }
}

BassFigures = \figuremode {
  r8 r1
  r
  <5>2 <9>4 <6 5>8 <_+>
  r1
  r4 <5 _+>8 <6 \t>4. <5>8 <6>
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
